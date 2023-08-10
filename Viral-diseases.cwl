cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  viral-diseases-excl-chronic-hepatitishiv-enteritis---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-enteritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  viral-diseases-excl-chronic-hepatitishiv-agent---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-agent---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-enteritis---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-unspecified---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-agent---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-simplex---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-simplex---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-unspecified---secondary/output
  anogenital-viral-diseases-excl-chronic-hepatitishiv---secondary:
    run: anogenital-viral-diseases-excl-chronic-hepatitishiv---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-simplex---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-poliomyelitis---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-poliomyelitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: anogenital-viral-diseases-excl-chronic-hepatitishiv---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-encephalitis---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-encephalitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-poliomyelitis---secondary/output
  viral-diseases-excl-chronic-hepatitishiv---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-encephalitis---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-rabies---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-rabies---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-mosquitoborne---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-mosquitoborne---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-rabies---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-meningitis---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-meningitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-mosquitoborne---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-system---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-meningitis---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-dengue---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-dengue---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-system---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-arthropodborne---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-arthropodborne---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-dengue---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-fever---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-fever---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-arthropodborne---secondary/output
  haemorrhagic-viral-diseases-excl-chronic-hepatitishiv---secondary:
    run: haemorrhagic-viral-diseases-excl-chronic-hepatitishiv---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-fever---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-zoster---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-zoster---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: haemorrhagic-viral-diseases-excl-chronic-hepatitishiv---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-measles---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-measles---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-zoster---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-rubella---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-rubella---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-measles---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-lesion---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-lesion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-rubella---secondary/output
  acute-viral-diseases-excl-chronic-hepatitishiv---secondary:
    run: acute-viral-diseases-excl-chronic-hepatitishiv---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-lesion---secondary/output
  other-viral-diseases-excl-chronic-hepatitishiv---secondary:
    run: other-viral-diseases-excl-chronic-hepatitishiv---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: acute-viral-diseases-excl-chronic-hepatitishiv---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-resulting---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-resulting---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: other-viral-diseases-excl-chronic-hepatitishiv---secondary/output
  cytomegaloviral-viral-diseases-excl-chronic-hepatitishiv---secondary:
    run: cytomegaloviral-viral-diseases-excl-chronic-hepatitishiv---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-resulting---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-mumps---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-mumps---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cytomegaloviral-viral-diseases-excl-chronic-hepatitishiv---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-sequelae---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-sequelae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-mumps---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-herpe---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-herpe---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-sequelae---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-otitis---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-otitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-herpe---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-classified---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-otitis---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-identified---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-identified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-classified---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-pneumonia---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-pneumonia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-identified---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-bronchiolitis---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-bronchiolitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-pneumonia---secondary/output
  syncytial-viral-diseases-excl-chronic-hepatitishiv---secondary:
    run: syncytial-viral-diseases-excl-chronic-hepatitishiv---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-bronchiolitis---secondary/output
  viral-diseases-excl-chronic-hepatitishiv-arthritis---secondary:
    run: viral-diseases-excl-chronic-hepatitishiv-arthritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: syncytial-viral-diseases-excl-chronic-hepatitishiv---secondary/output
  congenital-viral-diseases-excl-chronic-hepatitishiv---secondary:
    run: congenital-viral-diseases-excl-chronic-hepatitishiv---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: viral-diseases-excl-chronic-hepatitishiv-arthritis---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: congenital-viral-diseases-excl-chronic-hepatitishiv---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
