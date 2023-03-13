
const err = ArgumentError("""
              Use `@safetestset` like the following:
              @safetestset "Benchmark Tests" begin include("benchmark_tests.jl") end
              @safetestset BenchmarkTests = "Benchmark Tests" begin include("benchmark_tests.jl") end
              """)

macro mysafetestset(args...)
    length(args) != 2 && throw(err)
    name, expr = args
    @info name, typeof(name)
    if name isa Union{String,Symbol}
        mod = gensym()
        testname = name
    elseif name isa Expr && name.head == :(=) && length(name.args) == 2
        mod, testname = name.args
    else
        throw(err)
    end
    quote
        @eval module $mod
        using Test, SafeTestsets
        @testset $testname $expr
        end
        nothing
    end
end
@mysafetestset sfn begin
    include(sfn)
end

macro mymacro(name, ex)
    # name, ex = args
    @info name, ex
    ex = Base.remove_linenums!(ex)
    # Main.ex[] = ex
    # new_ex = :()
    # @show "new" new_ex
    # :(
    #     $(esc(name))
    # )
    mod_ = gensym()
    quote
        # @info new_name
        @eval module $mod_
        using Test, SafeTestsets
        # new_name = 
        new_ex = include($(esc($ex.args[1].args[2])))
        @info new_ex
        # name = $esc($name)
        # @testset $new_name $new_ex
        eval(:(@testset $new_name $new_ex))
        end
        nothing
    end
end

@mymacro sfn begin
    include(sfn)
end

quote
    #= /Users/anand/.julia/dev/AILeetcode/test/runtests.jl:72 =#
    include($sfn)
end
ex = Base.remove_linenums!(:(
    begin
        include(sfn)
    end
))

macro mymacro(sfn, ex)
    esc(
        mod_=gensym()
             :(
            @eval module $mod_
        using Test, SafeTestsets
        @testset "$sfn" begin
            include(sfn)
        end
        end)
    )
end

@mymacro sfn begin
    include(sfn)
end
macro mymacro(sfn, ex)
    esc(:(@testset "$sfn" begin
        include(sfn)
    end))
end

macro mymacro(sfn, ex)
    @quote
    eval(esc(:(@testset "$sfn" begin
        include(sfn)
    end)))

end

filename = "test.jl"
@mymacro filename begin
    include($(Meta.quot(filename)))
end
using SafeTestsets

macro safetestset(args...)
    length(args) != 2 && throw(ArgumentError("""
        Use `@safetestset` like the following:
        @safetestset "Benchmark Tests" begin include("benchmark_tests.jl") end
        @safetestset BenchmarkTests = "Benchmark Tests" begin include("benchmark_tests.jl") end
    """))
    name, expr = args
    if name isa String || name isa Symbol
        mod = gensym()
        testname = name
    elseif name isa Expr && name.head == :(=) && length(name.args) == 2
        mod, testname = name.args
    else
        throw(err)
    end
    filestring = string(testname)
    quote
        @eval module $mod
        using Test, SafeTestsets
        @testset $testname begin
            include($filestring)
        end
        end
        nothing
    end
end
@mysafetestset fn begin
    include(fn)
end
fn = "test.jl"
@safetestset fn begin
    include(fn)
end

@safetestset esc(fn) begin
    include($fn)
end
name = "My Test Set"
@safetestset $(esc(name)) begin
    include("my_tests.jl")
end

x = 1
y = 2
z = "test.jl"

macro foo(ex...)
    @show ex
    a, b = ex
    # esc(
    # s = string($a)
    :(
        begin
            c = $a
            @info(c)
            @testset $c begin
                include($b)
            end
        end
    )
    # )
end

@foo x z
x = "x"
@foo x z
a
# """
# i have this julia code that puts @testset into a module. 

#          const err = ArgumentError("""
#                        Use `@safetestset` like the following:
#                        @safetestset "Benchmark Tests" begin include("benchmark_tests.jl") end
#                        @safetestset BenchmarkTests = "Benchmark Tests" begin include("benchmark_tests.jl") end
#                        """)
#          macro safetestset(args...)
#              length(args) != 2 && throw(err)
#              name, expr = args
#              if name isa String
#                  mod = gensym()
#                  testname = name
#              elseif name isa Expr && name.head == :(=) && length(name.args) == 2
#                  mod, testname = name.args
#              else
#                  throw(err)
#              end
#              quote
#                  @eval module $mod
#                      using Test, SafeTestsets
#                      @testset $testname $expr
#                  end
#                  nothing
#              end
#          end

#          the usage currently doesn't allow usage like this:
#          ```
#          fn = "test.jl"
#          @safetestset fn begin include(fn) end
#          ```
#          i know part of the problem has to do with escaping and interpolating in expressions, but i don't know how to make this work. 
#          the error is thrown at 
#          ```
#              else
#                  throw(err)```"""