class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String code;
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.code,
    required this.isCorrect,
  });
}

final questions = [
  Question(
    text:
        'Chemistry is a branch of science that deals with the structure, composition, uses and properties of?',
    options: [
      const Option(code: 'A', text: 'Matter in general', isCorrect: true),
      const Option(code: 'B', text: 'Chemical reaction', isCorrect: false),
      const Option(code: 'C', text: 'Organic reaction', isCorrect: false),
      const Option(code: 'D', text: 'Inorganic reaction', isCorrect: false),
      const Option(code: 'E', text: 'Organic synthesis', isCorrect: false),
    ],
  ),
  Question(
    text: 'Anything that has mass and occupies space is referred to as---?',
    options: [
      const Option(code: 'A', text: 'Molecule', isCorrect: false),
      const Option(code: 'B', text: 'Compound', isCorrect: false),
      const Option(code: 'C', text: 'Matter', isCorrect: true),
      const Option(code: 'D', text: 'Ion', isCorrect: false),
      const Option(code: 'E', text: 'Element', isCorrect: false),
    ],
  ),
  Question(
    text: 'The three states of matter are---?',
    options: [
      const Option(
          code: 'A', text: 'Atom, element and compound', isCorrect: false),
      const Option(
          code: 'B', text: 'Solid, liquid and solution', isCorrect: false),
      const Option(code: 'C', text: 'Solid, liquid and gas', isCorrect: true),
      const Option(
          code: 'D', text: 'Solution, solvent and solute', isCorrect: false),
      const Option(code: 'E', text: 'None of the above', isCorrect: false),
    ],
  ),
  Question(
    text:
        'The smallest particle of an element that can take part in a chemical reaction is known as---?',
    options: [
      const Option(code: 'A', text: 'Ion', isCorrect: false),
      const Option(code: 'B', text: 'Molecule', isCorrect: false),
      const Option(code: 'C', text: 'Atom', isCorrect: true),
      const Option(code: 'D', text: 'Compound', isCorrect: false),
      const Option(code: 'E', text: 'Element', isCorrect: false),
    ],
  ),
  Question(
    text:
        'The number of atoms in each molecule of an element is referred to as----?',
    options: [
      const Option(code: 'A', text: 'Periodicty', isCorrect: false),
      const Option(code: 'B', text: 'Atomicity', isCorrect: false),
      const Option(code: 'C', text: 'Atomic number', isCorrect: false),
      const Option(code: 'D', text: 'Mass number', isCorrect: false),
      const Option(code: 'E', text: 'Avogadro’s number', isCorrect: true),
    ],
  ),
  Question(
    text: 'Which of the following elements is a diatomic molecule---?',
    options: [
      const Option(code: 'A', text: 'Oxygen O2', isCorrect: true),
      const Option(code: 'B', text: 'Phosphorus P3', isCorrect: false),
      const Option(code: 'C', text: 'Sulphur S4', isCorrect: false),
      const Option(code: 'D', text: 'Helium He', isCorrect: false),
      const Option(code: 'E', text: 'Argon Ar', isCorrect: false),
    ],
  ),
  Question(
    text:
        'Any atom or group of atoms which possess an electric charge is called a/an---?',
    options: [
      const Option(code: 'A', text: 'Molecule', isCorrect: false),
      const Option(code: 'B', text: 'Compound', isCorrect: false),
      const Option(code: 'C', text: 'Element', isCorrect: false),
      const Option(code: 'D', text: 'Ion', isCorrect: true),
      const Option(code: 'E', text: 'Isotope', isCorrect: false),
    ],
  ),
  Question(
    text:
        'The scientist who discovered that an atom consist of positive core called nucleus where mass of the atom is contained and electron moving round the shell is Known as---?',
    options: [
      const Option(code: 'A', text: 'Rutherford', isCorrect: true),
      const Option(code: 'B', text: 'John Dalton', isCorrect: false),
      const Option(code: 'C', text: 'Neils Borh', isCorrect: false),
      const Option(code: 'D', text: 'JJ.Thompson', isCorrect: false),
      const Option(code: 'E', text: 'Robert Einstein', isCorrect: false),
    ],
  ),
  Question(
    text:
        'An atom is a sphere of positively charge matter in which negatively charge electrons are embedded, this theory is proposed by ----?',
    options: [
      const Option(code: 'A', text: 'John Dalton', isCorrect: false),
      const Option(code: 'B', text: 'JJ Thompson', isCorrect: false),
      const Option(code: 'C', text: 'Ru-therford', isCorrect: true),
      const Option(code: 'D', text: 'Neils Borh', isCorrect: false),
      const Option(code: 'E', text: 'Grahams', isCorrect: false),
    ],
  ),
  Question(
    text:
        'Which of the following is not part of the summary of John Dalton’s atomic theory?',
    options: [
      const Option(
          code: 'A',
          text:
              'All elements are made up of small indivisible particle called atom.',
          isCorrect: false),
      const Option(
          code: 'B',
          text: 'Atom can neither be created nor destroyed.',
          isCorrect: false),
      const Option(
          code: 'C',
          text:
              'Atom of the same element are alike in every aspect, and differ from atom of all elements.',
          isCorrect: false),
      const Option(
          code: 'D',
          text:
              'When atom combines with other atoms they do so in simple ratios.',
          isCorrect: false),
      const Option(
          code: 'E',
          text: 'Atom can be created and can be destroyed.',
          isCorrect: true),
    ],
  ),
  Question(
    text:
        'Which of the following years did John Dalton proposed the Atomic theory---?',
    options: [
      const Option(code: 'A', text: '1913', isCorrect: false),
      const Option(code: 'B', text: '1898', isCorrect: false),
      const Option(code: 'C', text: '1808', isCorrect: true),
      const Option(code: 'D', text: '1912', isCorrect: false),
      const Option(code: 'E', text: '1974', isCorrect: false),
    ],
  ),
  Question(
    text:
        'A principle which state, that electrons enter into orbital singly first before pairing begins is referred to as----?',
    options: [
      const Option(
          code: 'A', text: 'Le Chatellier’s principle', isCorrect: false),
      const Option(code: 'B', text: 'Aufbau principle', isCorrect: true),
      const Option(code: 'C', text: 'Hund principle', isCorrect: false),
      const Option(
          code: 'D', text: 'Pauli Exclusion Principle', isCorrect: false),
      const Option(code: 'E', text: 'None of the above', isCorrect: false),
    ],
  ),
  Question(
    text:
        'A chemical reaction that proceeds with absorption of heat from the environment is known as----?',
    options: [
      const Option(code: 'A', text: 'Endothermic reaction', isCorrect: true),
      const Option(code: 'B', text: 'Exothermic reaction', isCorrect: false),
      const Option(code: 'C', text: 'Displacement reaction', isCorrect: false),
      const Option(code: 'D', text: 'Redox reaction', isCorrect: false),
      const Option(code: 'E', text: 'Decomposition reaction', isCorrect: false),
    ],
  ),
  Question(
    text: 'The maximum number of electrons the (d-orbital) can accommodate is?',
    options: [
      const Option(code: 'A', text: '2 Electrons', isCorrect: false),
      const Option(code: 'B', text: '6 Electrons', isCorrect: false),
      const Option(code: 'C', text: '8 Electrons', isCorrect: false),
      const Option(code: 'D', text: '10 Electrons', isCorrect: true),
      const Option(code: 'E', text: '14 Electrons', isCorrect: false),
    ],
  ),
  Question(
    text:
        'In the building of an atom electrons enter into orbital in order of increasing energy levels this is referred to as?',
    options: [
      const Option(code: 'A', text: 'Hund principle', isCorrect: false),
      const Option(
          code: 'B', text: 'Pauli exclusion principle', isCorrect: false),
      const Option(
          code: 'C', text: 'Le Chatellier’s principle', isCorrect: false),
      const Option(code: 'D', text: 'Aufbau principle', isCorrect: true),
      const Option(code: 'E', text: 'none the above', isCorrect: false),
    ],
  ),
  Question(
    text: 'The subsidiary energy levels are?',
    options: [
      const Option(code: 'A', text: 'spdf orbitals', isCorrect: true),
      const Option(code: 'B', text: 'n=1 n=2', isCorrect: false),
      const Option(code: 'C', text: 'Klmnop shells', isCorrect: false),
      const Option(code: 'D', text: '1234', isCorrect: false),
      const Option(code: 'E', text: 'wxyz', isCorrect: false),
    ],
  ),
  Question(
    text:
        'Principle which State that “Two electrons in the same orbital of an atom cannot have the same values for all quantum number is Known as?',
    options: [
      const Option(code: 'A', text: 'Hund principle', isCorrect: false),
      const Option(
          code: 'B', text: 'Pauli exclusion principle', isCorrect: true),
      const Option(
          code: 'C', text: 'Le Chatellier’s principle', isCorrect: false),
      const Option(code: 'D', text: 'Aufbau principle', isCorrect: false),
      const Option(code: 'E', text: 'none the above', isCorrect: false),
    ],
  ),
  Question(
    text:
        'A chemical bonding that involves complete transfer (lost or gain) of valence electron to attain a noble gas structure is Known as?',
    options: [
      const Option(code: 'A', text: 'Dative bonding', isCorrect: false),
      const Option(code: 'B', text: 'Covalent bonding', isCorrect: false),
      const Option(code: 'C', text: 'Electrovalent bonding', isCorrect: true),
      const Option(code: 'D', text: 'Chemical bonding', isCorrect: false),
      const Option(code: 'E', text: 'Hydrogen Bonding', isCorrect: false),
    ],
  ),
  Question(
    text:
        'Which of the following is not one of the properties of Covalent bonding compounds?',
    options: [
      const Option(code: 'A', text: 'They form molecules', isCorrect: false),
      const Option(code: 'B', text: 'Insoluble in water', isCorrect: false),
      const Option(
          code: 'C', text: 'Good conductors of electricity', isCorrect: true),
      const Option(
          code: 'D', text: 'Soluble in organic solvent', isCorrect: false),
      const Option(code: 'E', text: 'Low melting point', isCorrect: false),
    ],
  ),
  Question(
    text:
        'A Non metallic element like chlorine and oxygen undergoes what type of bonding?',
    options: [
      const Option(code: 'A', text: 'Electrovalent bonding', isCorrect: false),
      const Option(code: 'B', text: 'Covalent bonding', isCorrect: true),
      const Option(code: 'C', text: 'Dative bonding', isCorrect: false),
      const Option(code: 'D', text: 'Chemical bonding', isCorrect: false),
      const Option(code: 'E', text: 'Metallic Bonding', isCorrect: false),
    ],
  ),
  Question(
    text:
        'A type of bonding that involves sharing of equal number of electrons to attain noble gas structure is called?',
    options: [
      const Option(code: 'A', text: 'Electrovalent bonding', isCorrect: false),
      const Option(code: 'B', text: 'Chemical bonding', isCorrect: false),
      const Option(code: 'C', text: 'Dative bonding', isCorrect: false),
      const Option(code: 'D', text: 'Covalent bonding', isCorrect: true),
      const Option(code: 'E', text: 'Bonding', isCorrect: false),
    ],
  ),
  Question(
    text:
        'A reaction between sodium (Na) and Chlorine (Cl) to form sodium chloride (NaCl) is an example of what type of reaction?',
    options: [
      const Option(code: 'A', text: 'Electrovalent bonding', isCorrect: false),
      const Option(code: 'B', text: 'Chemical bonding', isCorrect: true),
      const Option(code: 'C', text: 'Dative bonding', isCorrect: false),
      const Option(code: 'D', text: 'Covalent bonding.', isCorrect: false),
      const Option(code: 'E', text: 'Bonding', isCorrect: false),
    ],
  ),
  Question(
    text:
        'Which of the following is one of the properties of electrovalent bonding compounds?',
    options: [
      const Option(
          code: 'A',
          text: 'They are good conductors of electricity',
          isCorrect: true),
      const Option(code: 'B', text: 'insoluble in water', isCorrect: false),
      const Option(code: 'C', text: 'low Melting point', isCorrect: false),
      const Option(
          code: 'D', text: 'soluble in organic solvent', isCorrect: false),
      const Option(code: 'E', text: 'non electrolyte', isCorrect: false),
    ],
  ),
  Question(
    text:
        'Which law states that the volume of a given mass of gas is inversely proportional to its pressure, provided that the temperature remains constant?',
    options: [
      const Option(code: 'A', text: 'Boyle’s Law', isCorrect: true),
      const Option(code: 'B', text: 'Charle’s law', isCorrect: false),
      const Option(code: 'C', text: 'Graham’s law', isCorrect: false),
      const Option(code: 'D', text: 'Dalton’s law', isCorrect: false),
      const Option(code: 'E', text: 'Faraday’s first law', isCorrect: false),
    ],
  ),
  Question(
    text:
        'If 375 cm3 of a gas has a pressure of 770 mmHg, what is its volume if the pressure is reduced to 750 mmHg?',
    options: [
      const Option(code: 'A', text: '375 cm3', isCorrect: false),
      const Option(code: 'B', text: '385 cm3', isCorrect: false),
      const Option(code: 'C', text: '395 cm3', isCorrect: false),
      const Option(code: 'D', text: '400 cm3', isCorrect: false),
      const Option(code: 'E', text: '405 cm3', isCorrect: true),
    ],
  ),
  Question(
    text: 'Which of the following is the general gas equation?',
    options: [
      const Option(code: 'A', text: 'V¹P¹/T¹ = V²P²/T²', isCorrect: true),
      const Option(code: 'B', text: 'V²P²/T² = V³P³/T³', isCorrect: false),
      const Option(code: 'C', text: 'V4P4/T6 = V5P5/T5', isCorrect: false),
      const Option(code: 'D', text: 'V6P6/T6 = V7P7/T7', isCorrect: false),
    ],
  ),
  Question(
    text: 'Charle’s law can be express mathematically as?',
    options: [
      const Option(code: 'A', text: 'V∞T ', isCorrect: false),
      const Option(code: 'B', text: 'V ∞ p/1.', isCorrect: false),
      const Option(code: 'C', text: 'V ∞1/p', isCorrect: true),
      const Option(code: 'D', text: 'V ∞2//p ', isCorrect: false),
      const Option(code: 'E', text: 'V =3//p', isCorrect: false),
    ],
  ),
  Question(
    text:
        'What is the standard temperature given by the System International (SI) unit?',
    options: [
      const Option(code: 'A', text: '100°C or 220 K', isCorrect: false),
      const Option(code: 'B', text: '1°C or 270 K', isCorrect: false),
      const Option(code: 'C', text: '0°C or 273 K', isCorrect: true),
      const Option(code: 'D', text: '1000°C or 273 K', isCorrect: false),
      const Option(code: 'E', text: '0°C or 272 K', isCorrect: false),
    ],
  ),
  Question(
    text:
        'State of a system where there are no observable changes in the properties of the system with respect to time is called:',
    options: [
      const Option(code: 'A', text: 'Chemical equilibrium', isCorrect: true),
      const Option(code: 'B', text: 'Chemical equation', isCorrect: false),
      const Option(
          code: 'C', text: 'Chemical thermodynamics', isCorrect: false),
      const Option(code: 'D', text: 'Chemical Kinetics', isCorrect: false),
      const Option(code: 'E', text: 'Chemical reaction', isCorrect: false),
    ],
  ),
  Question(
    text:
        'A law that state that if an external constrain such as change in temperature, pressure or concentration is imposed on a chemical system in equilibrium the equilibrium will shift so as to neutralize the constraints. Is referred to as?',
    options: [
      const Option(
          code: 'A', text: 'Le Chatellier’s principle', isCorrect: true),
      const Option(
          code: 'B', text: 'Pauli Exclusion Principle', isCorrect: false),
      const Option(code: 'C', text: 'Hunds principle', isCorrect: false),
      const Option(code: 'D', text: 'Aufbau principle', isCorrect: false),
      const Option(code: 'E', text: 'None the above', isCorrect: false)
    ],
  ),
  Question(
    text:
        'The amount of heat evolved when one mole of a substance is burned completely in oxygen is called?',
    options: [
      const Option(code: 'A', text: 'Heat of neutralization', isCorrect: false),
      const Option(code: 'B', text: 'Heat of Combustion', isCorrect: true),
      const Option(code: 'C', text: 'Heat of formation', isCorrect: false),
      const Option(code: 'D', text: 'Heat of reaction', isCorrect: false),
      const Option(code: 'E', text: 'Enthalpy', isCorrect: false)
    ],
  ),
  Question(
    text:
        'In Thermo chemical equation below ,H, is positive the forward reaction is----? N2 (g) + O2 (g) 2NO (g) H = +190.4KJ Mol-1',
    options: [
      const Option(code: 'A', text: 'Exothermic', isCorrect: true),
      const Option(code: 'B', text: 'Endothermic', isCorrect: false),
      const Option(code: 'C', text: 'Reversible reaction', isCorrect: false),
      const Option(code: 'D', text: 'Dynamic equilibrium', isCorrect: false),
      const Option(code: 'E', text: 'Static equilibrium', isCorrect: false)
    ],
  ),
  Question(
    text:
        'A measure of the degree of disorderliness in a chemical system is known as the',
    options: [
      const Option(code: 'A', text: 'Activation energy', isCorrect: false),
      const Option(code: 'B', text: 'Enthalpy', isCorrect: false),
      const Option(code: 'C', text: 'Entropy', isCorrect: true),
      const Option(code: 'D', text: 'Equilibrium', isCorrect: false),
      const Option(code: 'E', text: 'Reaction', isCorrect: false)
    ],
  ),
  Question(
    text: 'A chemical system is at equilibrium when------”?',
    options: [
      const Option(code: 'A', text: 'ΔG is positive', isCorrect: false),
      const Option(code: 'B', text: 'ΔG is zero', isCorrect: true),
      const Option(code: 'C', text: 'ΔS is negative', isCorrect: false),
      const Option(code: 'D', text: 'ΔS is positive', isCorrect: false),
      const Option(code: 'E', text: 'ΔS is neutral', isCorrect: false)
    ],
  ),
  Question(
    text:
        'What does ΔH represent in the equation below? CI2 (g) +2e – 2CI-: ΔH = +363kjmol-1',
    options: [
      const Option(code: 'A', text: 'Activation energy', isCorrect: false),
      const Option(code: 'B', text: 'Dissociation energy', isCorrect: true),
      const Option(code: 'C', text: 'Electron affinity', isCorrect: false),
      const Option(code: 'D', text: 'Enthalpy change', isCorrect: false),
      const Option(code: 'E', text: 'Entropy change', isCorrect: false),
    ],
  ),
  Question(
    text:
        'Consider the reaction H+ (aq) + OH-(aq) → H20 (1) the energy change taking place in the reaction above is enthalpy of------?',
    options: [
      const Option(code: 'A', text: 'Formation', isCorrect: false),
      const Option(code: 'B', text: 'Hydration', isCorrect: false),
      const Option(code: 'C', text: 'Neutralization', isCorrect: true),
      const Option(code: 'D', text: 'Solution', isCorrect: false),
      const Option(code: 'E', text: 'Sublimation', isCorrect: false),
    ],
  ),
  Question(
    text:
        'CH4 (g) + 2O2(g) → 2H2O(1) + CO2(g) ΔH = 890kJmol-1 ΔH in the reaction represented by the equation above is the enthalpy of---?',
    options: [
      const Option(code: 'A', text: 'Formation', isCorrect: false),
      const Option(code: 'B', text: 'Combustion', isCorrect: true),
      const Option(code: 'C', text: 'Solution', isCorrect: false),
      const Option(code: 'D', text: 'Activation', isCorrect: false),
      const Option(code: 'E', text: 'Deactivation', isCorrect: false),
    ],
  ),
  Question(
    text:
        'A chemical reaction that proceeds with evolution of heat to the environment is known as- ?',
    options: [
      const Option(code: 'A', text: 'Endothermic reaction', isCorrect: false),
      const Option(code: 'B', text: 'Exothermic reaction', isCorrect: true),
      const Option(code: 'C', text: 'Displacement reaction', isCorrect: false),
      const Option(code: 'D', text: 'Redox reaction', isCorrect: false),
      const Option(code: 'E', text: 'Decomposition reaction', isCorrect: false),
    ],
  ),
  Question(
    text:
        'The instrument used in measuring the temperature of exothermic and endothermic reactions is called----?',
    options: [
      const Option(code: 'A', text: 'Barometer', isCorrect: false),
      const Option(code: 'B', text: 'Thermometer', isCorrect: true),
      const Option(code: 'C', text: 'Galvanometer', isCorrect: false),
      const Option(code: 'D', text: 'Radiometer', isCorrect: false),
      const Option(code: 'E', text: 'Voltmeter', isCorrect: false),
    ],
  ),
  Question(
    text: 'A process that involves loss of an electron is known as----?',
    options: [
      const Option(code: 'A', text: 'Reduction', isCorrect: false),
      const Option(code: 'B', text: 'Oxidation', isCorrect: true),
      const Option(code: 'C', text: 'Hybridization', isCorrect: false),
      const Option(code: 'D', text: 'Polymerization', isCorrect: false),
      const Option(code: 'E', text: 'Isomerization', isCorrect: false),
    ],
  ),
  Question(
    text: 'This reaction represents Sn2+ Sn4+ + 2e-',
    options: [
      const Option(code: 'A', text: 'Oxidation reaction', isCorrect: true),
      const Option(code: 'B', text: 'Reduction reaction', isCorrect: false),
      const Option(code: 'C', text: 'Exothermic reaction', isCorrect: false),
      const Option(code: 'D', text: 'Endothermic reaction', isCorrect: false),
      const Option(code: 'E', text: 'Synthesis', isCorrect: false),
    ],
  ),
  Question(
    text: 'Which of the followings is an Example of oxidising agent?',
    options: [
      const Option(code: 'A', text: 'MnO-', isCorrect: false),
      const Option(code: 'B', text: 'I-', isCorrect: false),
      const Option(code: 'C', text: 'Sn2+', isCorrect: true),
      const Option(code: 'D', text: 'Mg', isCorrect: false),
      const Option(code: 'E', text: 'Fe2+', isCorrect: false),
    ],
  ),
  Question(
    text: 'This reaction represents Fe3+ +e- Fe2+',
    options: [
      const Option(code: 'A', text: 'Oxidation reaction', isCorrect: false),
      const Option(code: 'B', text: 'Reduction reaction', isCorrect: true),
      const Option(code: 'C', text: 'Exothermic reaction', isCorrect: false),
      const Option(code: 'D', text: 'Endothermic reaction', isCorrect: false),
      const Option(code: 'E', text: 'Displacement Reaction', isCorrect: false),
    ],
  ),
  Question(
    text:
        'A substance which produces hydrogen ions as the only positive ions when dissolved in water is called what?',
    options: [
      const Option(code: 'A', text: 'Acid', isCorrect: true),
      const Option(code: 'B', text: 'Base', isCorrect: false),
      const Option(code: 'C', text: 'Alkali', isCorrect: false),
      const Option(code: 'D', text: 'Salt', isCorrect: false),
      const Option(code: 'E', text: 'Ion', isCorrect: false),
    ],
  ),
  Question(
    text: 'Which of the followings acid is an organic acid?',
    options: [
      const Option(
          code: 'A', text: 'Hydrochloric Acid (HCl)', isCorrect: false),
      const Option(
          code: 'B', text: 'Trioxonitrate (V) Acid (HNO3)', isCorrect: false),
      const Option(
          code: 'C',
          text: 'Hydrogen Tetraoxo Sulphate (vi) Acid (H2SO4)',
          isCorrect: false),
      const Option(code: 'D', text: 'Ethanoic Acid CH3COOH', isCorrect: true),
      const Option(code: 'E', text: 'None of the above', isCorrect: false)
    ],
  ),
  Question(
    text: 'The following are physical properties of a base except?',
    options: [
      const Option(
          code: 'A', text: 'Bases have Bitter taste', isCorrect: false),
      const Option(
          code: 'B', text: 'Bases are soapy to the touch', isCorrect: false),
      const Option(
          code: 'C',
          text: 'Bases turn red litmus paper to blue',
          isCorrect: false),
      const Option(
          code: 'D',
          text: 'Concentrated bases are corrosive',
          isCorrect: false),
      const Option(code: 'E', text: 'Bases have Sour taste', isCorrect: true)
    ],
  ),
  Question(
    text:
        'A reaction between acid and base to produce salt and water is known as---?',
    options: [
      const Option(code: 'A', text: 'Oxidation reaction', isCorrect: false),
      const Option(code: 'B', text: 'Reduction reaction', isCorrect: false),
      const Option(code: 'C', text: 'Neutralisation reaction', isCorrect: true),
      const Option(code: 'D', text: 'Condensation reaction', isCorrect: false),
      const Option(code: 'E', text: 'Reversible reaction', isCorrect: false)
    ],
  ),
  Question(
    text: 'Which of the following is not an example of a base?',
    options: [
      const Option(code: 'A', text: 'Hydrochloric Acid HCl', isCorrect: true),
      const Option(code: 'B', text: 'Sodium hydroxide NaOH', isCorrect: false),
      const Option(
          code: 'C', text: 'Aluminium hydroxide (Al (OH) 3', isCorrect: false),
      const Option(
          code: 'D', text: 'Calcium hydroxide Ca(OH)2', isCorrect: false),
      const Option(
          code: 'E', text: 'Copper II hydroxide Cu (OH) 2', isCorrect: false)
    ],
  ),
  Question(
    text: 'A salt can be used in the following ways except?',
    options: [
      const Option(
          code: 'A',
          text: 'Salt is use in manufacture of chlorine gas',
          isCorrect: false),
      const Option(
          code: 'B', text: 'Manufacture of fertilizer', isCorrect: false),
      const Option(
          code: 'C', text: 'Manufacture of Laxatives', isCorrect: false),
      const Option(
          code: 'D',
          text: 'Salt are also use as food preservatives',
          isCorrect: false),
      const Option(code: 'E', text: 'Manufacture of petroleum', isCorrect: true)
    ],
  ),
  Question(
    text:
        ' An example of organic acid that changes colour according to hydrogen ion concentration is?',
    options: [
      const Option(code: 'A', text: 'Chlorine', isCorrect: false),
      const Option(code: 'B', text: 'Sulphur', isCorrect: false),
      const Option(code: 'C', text: 'Methyl orange indicator', isCorrect: true),
      const Option(code: 'D', text: 'Calcium', isCorrect: false),
      const Option(code: 'E', text: 'Sodium', isCorrect: false)
    ],
  ),
];
