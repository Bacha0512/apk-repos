.class Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;
.super Landroid/webkit/WebViewClient;
.source "OpenUrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/OpenUrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;Lcom/ironsource/sdk/controller/OpenUrlActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;
    .param p2, "x1"    # Lcom/ironsource/sdk/controller/OpenUrlActivity$1;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;-><init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    # getter for: Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$300(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 226
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 219
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    # getter for: Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$300(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 220
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSearchKeys()Ljava/util/List;

    move-result-object v2

    .line 239
    .local v2, "searchKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 241
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-virtual {v3, v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    iget-object v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    # getter for: Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;
    invoke-static {v3}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->access$400(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->interceptedUrlToStore()V

    .line 248
    iget-object v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-virtual {v3}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->finish()V

    .line 249
    const/4 v3, 0x1

    .line 254
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method
