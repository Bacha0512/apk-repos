.class final Lcom/tapjoy/TJAdUnit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnit;->load(Lcom/tapjoy/TJPlacementData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJPlacementData;

.field final synthetic b:Lcom/tapjoy/TJAdUnit;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnit;Lcom/tapjoy/TJPlacementData;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnit$2;->a:Lcom/tapjoy/TJPlacementData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->e(Lcom/tapjoy/TJAdUnit;)Z

    .line 159
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    new-instance v2, Lcom/tapjoy/mraid/view/BasicWebView;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v3}, Lcom/tapjoy/TJAdUnit;->f(Lcom/tapjoy/TJAdUnit;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/mraid/view/BasicWebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;Lcom/tapjoy/mraid/view/BasicWebView;)Lcom/tapjoy/mraid/view/BasicWebView;

    .line 160
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->g(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/BasicWebView;

    move-result-object v0

    const-string v2, "<!DOCTYPE html><html><head><title>Tapjoy Background Webview</title></head></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/BasicWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    new-instance v2, Lcom/tapjoy/mraid/view/MraidView;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v3}, Lcom/tapjoy/TJAdUnit;->f(Lcom/tapjoy/TJAdUnit;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/mraid/view/MraidView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView;

    .line 164
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->h(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/TJAdUnit$a;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TJAdUnit$a;-><init>(Lcom/tapjoy/TJAdUnit;B)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/mraid/view/MraidView;->setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V

    .line 167
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    new-instance v2, Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v3}, Lcom/tapjoy/TJAdUnit;->f(Lcom/tapjoy/TJAdUnit;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 168
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->i(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 169
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->i(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 170
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->i(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 171
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->i(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    new-instance v2, Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v3}, Lcom/tapjoy/TJAdUnit;->f(Lcom/tapjoy/TJAdUnit;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Landroid/content/Context;Lcom/tapjoy/TJAdUnit;)V

    invoke-static {v0, v2}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJAdUnitJSBridge;

    .line 176
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->a:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->a:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->isPreloadDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->h(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$2;->a:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/mraid/view/MraidView;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->h(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$2;->a:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->a:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getBaseURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->a:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getHttpResponse()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->h(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->a:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->a:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getHttpResponse()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "utf-8"

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_3
    const-string v0, "TJAdUnit"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Error loading ad unit content"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto/16 :goto_0
.end method
