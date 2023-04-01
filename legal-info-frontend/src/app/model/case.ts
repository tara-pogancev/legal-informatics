export class Case {
  constructor(
    public id: number = 0,
    public sud: String = '',
    public poslovniBroj: String = '',
    public sudija: String = '',
    public tuzilac: String = '',
    public okrivljeni: String = '',
    public krivicnoDelo: String[] = [],
    public vrednostDuvana: number = 0,
    public brojPakovanja: number = 0,
    public masaDuvana: number = 0,
    public vrstaDuvana: String = '',
    public vrstaPresude: String = '',
    public primenjeniPropisi: String[] = []
  ) {}
}
