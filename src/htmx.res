module JsxProps = {
  /* https://htmx.org/attributes/hx-on/ */
  type hxOn = {
    @as("hx-on:click") hxOnClick?: unit => unit,
    // TODO: add in the rest of the events after testing
  }

  /* https://htmx.org/attributes/hx-swap/ */
  type hxSwap =
    | @as("innerHTML") InnerHTML
    | @as("outerHTML") OuterHTML
    | @as("beforebegin") BeforeBegin
    | @as("afterbegin") AfterBegin
    | @as("beforeend") BeforeEnd
    | @as("afterend") AfterEnd
    | @as("delete") Delete
    | @as("none") HxNone

  type hxEncoding = | @as("multipart/form-data") MultipartFormData

  type t = {
    // core attributes
    @as("hx-get") hxGet?: string,
    @as("hx-post") hxPost?: string,
    @as("hx-push-url") hxPushUrl?: string,
    @as("hx-select") hxSelect?: string,
    @as("hx-select-oob") hxSelectOob?: string,
    @as("hx-swap") hxSwap?: hxSwap,
    @as("hx-swap-oob") hxSwapOob?: hxSwap,
    @as("hx-target") hxTarget?: string,
    @as("hx-trigger") hxTrigger?: string,
    @as("hx-vals") hxVals?: JSON.t, // excluding javascript: for now
    ...hxOn,
    // additional attributes
    @as("hx-boost") hxBoost?: bool,
    @as("hx-confirm") hxConfirm?: string,
    @as("hx-delete") hxDelete?: string,
    @as("hx-disable") hxDisable?: bool,
    @as("hx-disabled-elt") hxDisabledElt?: bool,
    @as("hx-disinherit") hxDisinherit?: string,
    @as("hx-encoding") hxEncoding?: hxEncoding,
    @as("hx-ext") hxExt?: string,
    @as("hx-headers") hxHeaders?: JSON.t,
    @as("hx-history") hxHistory?: bool,
    @as("hx-history-elt") hxHistoryElt?: bool,
    @as("hx-include") hxInclude?: string,
    @as("hx-indicator") hxIndicator?: string,
    @as("hx-params") hxParams?: string,
    @as("hx-patch") hxPatch?: string,
    @as("hx-preserve") hxPreserve?: bool,
    @as("hx-prompt") hxPrompt?: string,
    @as("hx-put") hxPut?: string,
    @as("hx-replace-url") hxReplaceUrl?: string,
    @as("hx-request") hxRequest?: string,
    @as("hx-sse") hxSse?: string,
    @as("hx-sync") hxSync?: string,
    @as("hx-validate") hxValidate?: bool,
  }
}

// TODO - JS bindings
