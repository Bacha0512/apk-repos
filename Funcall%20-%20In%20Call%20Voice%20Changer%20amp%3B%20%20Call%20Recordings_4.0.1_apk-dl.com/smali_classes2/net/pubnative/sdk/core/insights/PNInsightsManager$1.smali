.class final Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$model:Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;->val$model:Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPNHttpRequestFail(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;->val$model:Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackingFailed(Landroid/content/Context;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onPNHttpRequestFinish(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 116
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;->val$model:Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;

    const-string v2, "invalid insight response (empty or null)"

    invoke-static {v0, v1, v2}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackingFailed(Landroid/content/Context;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 120
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lnet/pubnative/sdk/core/insights/model/PNInsightsAPIResponseModel;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/insights/model/PNInsightsAPIResponseModel;

    .line 121
    const-string v1, "ok"

    iget-object v2, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightsAPIResponseModel;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;->val$model:Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;

    invoke-static {v0, v1}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackingFinished(Landroid/content/Context;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 128
    const-string v2, "parsingException"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "serverResponse"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;->val$model:Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;

    invoke-static {v1}, Lnet/pubnative/sdk/core/exceptions/PNException;->extraException(Ljava/util/Map;)Lnet/pubnative/sdk/core/exceptions/PNException;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/exceptions/PNException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackingFailed(Landroid/content/Context;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    :try_start_1
    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;->val$model:Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;

    iget-object v0, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightsAPIResponseModel;->error_message:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackingFailed(Landroid/content/Context;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
