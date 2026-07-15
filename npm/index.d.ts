declare module '@apiverve/base64' {
  export interface base64Options {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface base64Response {
    status: string;
    error: string | null;
    data: Base64EncoderDecoderData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface Base64EncoderDecoderData {
      action:   null | string;
      original: null | string;
      encoded:  null | string;
      length:   number | null;
  }

  export default class base64Wrapper {
    constructor(options: base64Options);

    execute(callback: (error: any, data: base64Response | null) => void): Promise<base64Response>;
    execute(query: Record<string, any>, callback: (error: any, data: base64Response | null) => void): Promise<base64Response>;
    execute(query?: Record<string, any>): Promise<base64Response>;
  }
}
