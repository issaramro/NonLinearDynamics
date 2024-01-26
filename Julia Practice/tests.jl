"""
    Test 1: AGAGAGATCCCTTA
    Test 2: ATATATAGGCCAX
    Test 3: ATATATAGGCCAA
"""
function test_Nucleotide(count_nucleotides)
    # Case 1
    a = count_nucleotides("AGAGAGATCCCTTA");
    expected = Dict('A' => 5, 'T' => 3, 'C' => 3, 'G' => 3)
    if expected != a
        printstyled("Expected $expected, got $a, \nIn case 1: AGAGAGATCCCTTA";color=:red)
        return
    end
    printstyled("Case 1: 'AGAGAGATCCCTTA' passed\n";color=:green)

    # Case 2
    try
        count_nucleotides("ATATATAGGCCAX");
        printstyled("Should have thrown an error for invalid nucleotide, \nIn case 2 ATATATAGGCCAX";color=:red)
        return
    catch e
        printstyled("Case 2: 'ATATATAGGCCAX' passed\n";color=:green)
    end

    # Case 3
    a = count_nucleotides("ATATATAGGCCAA");
    expected = Dict('A' => 6, 'T' => 3, 'C' => 2, 'G' => 2)
    if expected != a
        printstyled("Expected $expected, got $a, \nIn case 3 ATATATAGGCCAA";color=:red)
        return
    end
    printstyled("Case 3: 'ATATATAGGCCAA' passed\n";color=:green)
end


function test_fibonacci(ans)
    expected = [1,1,2,3,5,8,13,21];
    if ans != expected
        printstyled("Fibonacci sequence is wrong"; color=:red);
        return
    end
    printstyled("Fibonacci sequence is correct\n", color=:green);
end

function test_Hamming(f)
    # Case 1
    if f("ATA","ATC") != 1 
        printstyled("Expected 1, got $(f("ATA","ATC")), \nIn case 1: ATA and ATC";color=:red)
        return
    end
    printstyled("Case 1: 'ATA' and 'ATC' passed\n";color=:green)

    # Case 2
    if f("ATC","CAT") != 3
        printstyled("Expected 3, got $(f("ATC","CAT")), \nIn case 2: ATC and CAT";color=:red)
        return
    end
    printstyled("Case 2: 'ATC' and 'CAT' passed\n";color=:green)

    # Case 3
    if f("ATC","ATC") != 0
        printstyled( "Expected 0, got $(f("ATC","ATC")), \nIn case 3: ATC and ATC";color=:red)
        return
    end
    printstyled("Case 3: 'ATC' and 'ATC' passed\n";color=:green)

    # Case 4
    if f("ATC","CAC") != 2
        printstyled( "Expected 2, got $(f("ATC","AT")), \nIn case 4: ATC and AT";color=:red)
        return
    end
    printstyled("Case 4: 'ATC' and 'CAC' passed\n";color=:green)
end
