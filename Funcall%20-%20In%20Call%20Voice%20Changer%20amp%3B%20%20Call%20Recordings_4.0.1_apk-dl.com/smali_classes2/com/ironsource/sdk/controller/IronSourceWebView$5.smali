.class Lcom/ironsource/sdk/controller/IronSourceWebView$5;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field final synthetic val$scriptBuilder:Ljava/lang/StringBuilder;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 2783
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2785
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2789
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2790
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/ironsource/sdk/controller/IronSourceWebView;->evaluateJavascriptKitKat(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6100(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 2819
    :goto_0
    return-void

    .line 2792
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2815
    :catch_0
    move-exception v1

    .line 2816
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectJavascript: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    new-instance v2, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=injectJavaScript"

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2795
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 2798
    :try_start_2
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/ironsource/sdk/controller/IronSourceWebView;->evaluateJavascriptKitKat(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6100(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 2799
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # setter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6002(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2800
    :catch_1
    move-exception v0

    .line 2801
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    :try_start_3
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evaluateJavascrip NoSuchMethodError: SDK version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V

    .line 2803
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # setter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6002(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2804
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v0

    .line 2805
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evaluateJavascrip Exception: SDK version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V

    .line 2808
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # setter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6002(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2811
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V

    .line 2812
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # setter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6002(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
