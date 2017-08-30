.class Lcom/rami_bar/fun_call/activities/FragmentWeb$4;
.super Landroid/webkit/WebViewClient;
.source "FragmentWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentWeb;->openWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private running:I

.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentWeb;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentWeb;)V
    .locals 1
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentWeb;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentWeb;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$4;->running:I

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 143
    iget v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$4;->running:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$4;->running:I

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentWeb;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentWeb;->srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->access$100(Lcom/rami_bar/fun_call/activities/FragmentWeb;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 130
    iget v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$4;->running:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$4;->running:I

    .line 132
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentWeb;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentWeb;->srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->access$100(Lcom/rami_bar/fun_call/activities/FragmentWeb;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentWeb$4$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb$4$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentWeb$4;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 122
    iget v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$4;->running:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$4;->running:I

    .line 123
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method
