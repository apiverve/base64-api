declare module '@apiverve/base64' {
  export interface base64Options {
    api_key: string;
    secure?: boolean;
  }

  export interface base64Response {
    status: string;
    error: string | null;
    data: Base64Encoder/DecoderData;
    code?: number;
  }


  interface Base64EncoderDecoderData {
      action:   string;
      original: string;
      encoded:  string;
      length:   number;
  }

  export default class base64Wrapper {
    constructor(options: base64Options);

    execute(callback: (error: any, data: base64Response | null) => void): Promise<base64Response>;
    execute(query: Record<string, any>, callback: (error: any, data: base64Response | null) => void): Promise<base64Response>;
    execute(query?: Record<string, any>): Promise<base64Response>;
  }
}
