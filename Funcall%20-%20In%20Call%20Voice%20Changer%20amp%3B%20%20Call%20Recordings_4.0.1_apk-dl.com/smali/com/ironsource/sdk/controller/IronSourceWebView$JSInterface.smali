.class public Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field volatile udiaResults:I


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    .line 681
    return-void
.end method

.method private injectGetUDIA(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "jsonArr"    # Lorg/json/JSONArray;

    .prologue
    .line 2123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2124
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onGetUDIASuccess"

    const-string v4, "onGetUDIAFail"

    invoke-static {v1, p1, v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2125
    .local v0, "script":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 2127
    .end local v0    # "script":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private sendResults(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "jsArr"    # Lorg/json/JSONArray;

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    iget v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    if-gtz v0, :cond_0

    .line 2001
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->injectGetUDIA(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 2003
    :cond_0
    return-void
.end method

.method private setInterstitialAvailability(Z)V
    .locals 3
    .param p1, "isAvailable"    # Z

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5402(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1547
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onInterstitialAvailability"

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    :cond_0
    return-void
.end method


# virtual methods
.method public adClicked(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1554
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adClicked("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1557
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "productType"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1559
    .local v1, "productType":Ljava/lang/String;
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 1560
    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1561
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v4, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$10;

    invoke-direct {v4, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$10;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1575
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 1567
    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1568
    const-string v3, "demandSourceName"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1569
    .local v0, "demandSourceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v4, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;

    invoke-direct {v4, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public adCredited(Ljava/lang/String;)V
    .locals 25
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "adCredited("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ")"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    new-instance v21, Lcom/ironsource/sdk/data/SSAObj;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1177
    .local v21, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "credits"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1178
    .local v15, "creditsStr":Ljava/lang/String;
    if-eqz v15, :cond_2

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1180
    .local v5, "credits":I
    :goto_0
    const-string v2, "total"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1181
    .local v23, "totalCreditsStr":Ljava/lang/String;
    if-eqz v23, :cond_3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1183
    .local v8, "totalCredits":I
    :goto_1
    const-string v2, "demandSourceName"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1185
    .local v6, "demandSourceName":Ljava/lang/String;
    const-string v2, "productType"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1186
    .local v4, "product":Ljava/lang/String;
    const-string v2, "externalPoll"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 1189
    .local v16, "isExternalPoll":Z
    const/16 v22, 0x0

    .line 1190
    .local v22, "totalCreditsFlag":Z
    const/16 v17, 0x0

    .line 1191
    .local v17, "latestCompeltionsTime":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1197
    .local v19, "md5Signature":Z
    if-eqz v16, :cond_4

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v11

    .line 1200
    .local v11, "appKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v12

    .line 1208
    .local v12, "userId":Ljava/lang/String;
    :goto_2
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1211
    const-string v2, "signature"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "timestamp"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "totalCreditsFlag"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1213
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const-string v13, "One of the keys are missing: signature/timestamp/totalCreditsFlag"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v2, v0, v3, v13, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1275
    :cond_1
    :goto_3
    return-void

    .line 1178
    .end local v4    # "product":Ljava/lang/String;
    .end local v5    # "credits":I
    .end local v6    # "demandSourceName":Ljava/lang/String;
    .end local v8    # "totalCredits":I
    .end local v11    # "appKey":Ljava/lang/String;
    .end local v12    # "userId":Ljava/lang/String;
    .end local v16    # "isExternalPoll":Z
    .end local v17    # "latestCompeltionsTime":Ljava/lang/String;
    .end local v19    # "md5Signature":Z
    .end local v22    # "totalCreditsFlag":Z
    .end local v23    # "totalCreditsStr":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1181
    .restart local v5    # "credits":I
    .restart local v23    # "totalCreditsStr":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1204
    .restart local v4    # "product":Ljava/lang/String;
    .restart local v6    # "demandSourceName":Ljava/lang/String;
    .restart local v8    # "totalCredits":I
    .restart local v16    # "isExternalPoll":Z
    .restart local v17    # "latestCompeltionsTime":Ljava/lang/String;
    .restart local v19    # "md5Signature":Z
    .restart local v22    # "totalCreditsFlag":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v11

    .line 1205
    .restart local v11    # "appKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "userId":Ljava/lang/String;
    goto :goto_2

    .line 1218
    :cond_5
    const-string v2, "signature"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1221
    .local v14, "controllerMD5":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1223
    .local v20, "sig":Ljava/lang/StringBuilder;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1225
    .local v18, "localMD5":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1227
    const/16 v19, 0x1

    .line 1233
    :goto_4
    const-string v2, "totalCreditsFlag"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 1236
    const-string v2, "timestamp"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1239
    .end local v14    # "controllerMD5":Ljava/lang/String;
    .end local v18    # "localMD5":Ljava/lang/String;
    .end local v20    # "sig":Ljava/lang/StringBuilder;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1241
    move/from16 v9, v22

    .line 1242
    .local v9, "mTotalCreditsFlag":Z
    move-object/from16 v10, v17

    .line 1243
    .local v10, "mlatestCompeltionsTime":Ljava/lang/String;
    move/from16 v7, v19

    .line 1245
    .local v7, "mMd5Signature":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-object/from16 v24, v0

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;

    move-object/from16 v3, p0

    move-object/from16 v13, p1

    invoke-direct/range {v2 .. v13}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;ILjava/lang/String;ZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1229
    .end local v7    # "mMd5Signature":Z
    .end local v9    # "mTotalCreditsFlag":Z
    .end local v10    # "mlatestCompeltionsTime":Ljava/lang/String;
    .restart local v14    # "controllerMD5":Ljava/lang/String;
    .restart local v18    # "localMD5":Ljava/lang/String;
    .restart local v20    # "sig":Ljava/lang/StringBuilder;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const-string v13, "Controller signature is not equal to SDK signature"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v2, v0, v3, v13, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public adUnitsReady(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 943
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adUnitsReady("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    new-instance v3, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 946
    .local v3, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v4, "demandSourceName"

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 948
    .local v1, "demandSourceName":Ljava/lang/String;
    new-instance v0, Lcom/ironsource/sdk/data/AdUnitsReady;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/AdUnitsReady;-><init>(Ljava/lang/String;)V

    .line 950
    .local v0, "adUnitsReady":Lcom/ironsource/sdk/data/AdUnitsReady;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->isNumOfAdUnitsExist()Z

    move-result v4

    if-nez v4, :cond_1

    .line 951
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v5, 0x0

    const-string v6, "Num Of Ad Units Do Not Exist"

    invoke-static {v4, p1, v5, v6, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->getProductType()Ljava/lang/String;

    move-result-object v2

    .line 959
    .local v2, "product":Ljava/lang/String;
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 961
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v5, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Lcom/ironsource/sdk/data/AdUnitsReady;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public alert(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 764
    return-void
.end method

.method public checkInstalledApps(Ljava/lang/String;)V
    .locals 13
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 848
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkInstalledApps("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 851
    .local v9, "successFunToCall":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "failFunToCall":Ljava/lang/String;
    const/4 v3, 0x0

    .line 856
    .local v3, "funToCall":Ljava/lang/String;
    new-instance v8, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v8, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 857
    .local v8, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    sget-object v10, Lcom/ironsource/sdk/controller/IronSourceWebView;->APP_IDS:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "appIdsString":Ljava/lang/String;
    sget-object v10, Lcom/ironsource/sdk/controller/IronSourceWebView;->REQUEST_ID:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 862
    .local v5, "requestIdString":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, v0, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4200(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    .line 864
    .local v6, "resultArr":[Ljava/lang/Object;
    const/4 v10, 0x0

    aget-object v4, v6, v10

    check-cast v4, Ljava/lang/String;

    .line 865
    .local v4, "params":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v6, v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 867
    .local v2, "failed":Z
    if-eqz v2, :cond_2

    .line 868
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 869
    move-object v3, v1

    .line 877
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 878
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v11, "onCheckInstalledAppsSuccess"

    const-string v12, "onCheckInstalledAppsFail"

    invoke-static {v10, v3, v4, v11, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 879
    .local v7, "script":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 881
    .end local v7    # "script":Ljava/lang/String;
    :cond_1
    return-void

    .line 872
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 873
    move-object v3, v9

    goto :goto_0
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1779
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCalendarEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1784
    .local v1, "jsObj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1786
    .local v2, "jsRecurrence":Lorg/json/JSONObject;
    const-string v3, "frequency"

    const-string v4, "weekly"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1787
    const-string v3, "id"

    const-string v4, "testevent723GDf84"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1788
    const-string v3, "description"

    const-string v4, "Watch this crazy showInterstitial on cannel 5!"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1789
    const-string v3, "start"

    const-string v4, "2014-02-01T20:00:00-8:00"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1790
    const-string v3, "end"

    const-string v4, "2014-06-30T20:00:00-8:00"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1791
    const-string v3, "status"

    const-string v4, "pending"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1792
    const-string v3, "recurrence"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1793
    const-string v3, "reminder"

    const-string v4, "2014-02-01T19:50:00-8:00"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1798
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    .end local v2    # "jsRecurrence":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1795
    :catch_0
    move-exception v0

    .line 1796
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1010
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    new-instance v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v0, "file":Lcom/ironsource/sdk/data/SSAFile;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1015
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const-string v4, "File not exist"

    const-string v5, "1"

    invoke-static {v2, p1, v3, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1021
    :goto_0
    return-void

    .line 1018
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1019
    .local v1, "result":Z
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, p1, v1, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteFolder(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 996
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFolder("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    new-instance v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v0, "file":Lcom/ironsource/sdk/data/SSAFile;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1001
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const-string v4, "Folder not exist"

    const-string v5, "1"

    invoke-static {v2, p1, v3, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1006
    :goto_0
    return-void

    .line 1003
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1004
    .local v1, "result":Z
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, p1, v1, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public displayWebView(Ljava/lang/String;)V
    .locals 16
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1025
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "displayWebView("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14, v15}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1029
    new-instance v11, Lcom/ironsource/sdk/data/SSAObj;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v11, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v12, "display"

    invoke-virtual {v11, v12}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1031
    .local v4, "display":Z
    const-string v12, "productType"

    invoke-virtual {v11, v12}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1032
    .local v9, "productType":Ljava/lang/String;
    const-string v12, "standaloneView"

    invoke-virtual {v11, v12}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1033
    .local v7, "isStandaloneView":Z
    const-string v12, "demandSourceName"

    invoke-virtual {v11, v12}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, "demandSourceName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1036
    .local v6, "isRewardedVideo":Z
    if-eqz v4, :cond_8

    .line 1038
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v13, "immersive"

    invoke-virtual {v11, v13}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4602(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    .line 1039
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v13, "activityThemeTranslucent"

    invoke-virtual {v11, v13}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4702(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    .line 1041
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getState()Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    move-result-object v12

    sget-object v13, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Display:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    if-eq v12, v13, :cond_7

    .line 1043
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v13, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Display:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-virtual {v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "State: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v14}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v1

    .line 1049
    .local v1, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getOrientationState()Ljava/lang/String;

    move-result-object v8

    .line 1050
    .local v8, "orientation":Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v10

    .line 1054
    .local v10, "rotation":I
    if-eqz v7, :cond_0

    .line 1055
    new-instance v2, Lcom/ironsource/sdk/controller/ControllerView;

    invoke-direct {v2, v1}, Lcom/ironsource/sdk/controller/ControllerView;-><init>(Landroid/content/Context;)V

    .line 1056
    .local v2, "controllerView":Lcom/ironsource/sdk/controller/ControllerView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/ironsource/sdk/controller/ControllerView;->addView(Landroid/view/View;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v2, v12}, Lcom/ironsource/sdk/controller/ControllerView;->showInterstitial(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    .line 1112
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controllerView":Lcom/ironsource/sdk/controller/ControllerView;
    .end local v8    # "orientation":Ljava/lang/String;
    .end local v10    # "rotation":I
    :goto_0
    return-void

    .line 1063
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v8    # "orientation":Ljava/lang/String;
    .restart local v10    # "rotation":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1064
    new-instance v5, Landroid/content/Intent;

    const-class v12, Lcom/ironsource/sdk/controller/InterstitialActivity;

    invoke-direct {v5, v1, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1069
    .local v5, "intent":Landroid/content/Intent;
    :goto_1
    sget-object v12, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v12}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1070
    const-string v12, "application"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1071
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v12

    invoke-static {v12}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v8

    .line 1074
    :cond_1
    const/4 v6, 0x1

    .line 1076
    const-string v12, "productType"

    sget-object v13, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v13}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v12

    sget-object v13, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v13}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceName(Ljava/lang/String;)V

    .line 1092
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v13, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v13}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1093
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    move-result-object v12

    invoke-interface {v12, v3}, Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;->onRVAdOpened(Ljava/lang/String;)V

    .line 1096
    :cond_3
    const/high16 v12, 0x20000000

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1097
    const-string v12, "immersive"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1098
    const-string v12, "orientation_set_flag"

    invoke-virtual {v5, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    const-string v12, "rotation_set_flag"

    invoke-virtual {v5, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1101
    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1066
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v5, Landroid/content/Intent;

    const-class v12, Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-direct {v5, v1, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v5    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 1082
    :cond_5
    sget-object v12, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v12}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1083
    const-string v12, "productType"

    sget-object v13, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v13}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v12

    sget-object v13, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v13}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    goto :goto_2

    .line 1086
    :cond_6
    sget-object v12, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v12}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1087
    const-string v12, "application"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1088
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v12

    invoke-static {v12}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 1105
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "orientation":Ljava/lang/String;
    .end local v10    # "rotation":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "State: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v14}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1109
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v13, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-virtual {v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5000(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    goto/16 :goto_0
.end method

.method public getApplicationInfo(Ljava/lang/String;)V
    .locals 13
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 811
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getApplicationInfo("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 814
    .local v9, "successFunToCall":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "failFunToCall":Ljava/lang/String;
    new-instance v8, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v8, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 818
    .local v8, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v10, "productType"

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 819
    .local v5, "product":Ljava/lang/String;
    const-string v10, "demandSourceName"

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "demandSourceName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 823
    .local v3, "funToCall":Ljava/lang/String;
    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/Object;

    .line 825
    .local v6, "resultArr":[Ljava/lang/Object;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, v5, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4100(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    .line 827
    const/4 v10, 0x0

    aget-object v4, v6, v10

    check-cast v4, Ljava/lang/String;

    .line 828
    .local v4, "params":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v6, v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 830
    .local v2, "failed":Z
    if-eqz v2, :cond_2

    .line 831
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 832
    move-object v3, v1

    .line 840
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 841
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v11, "onGetApplicationInfoSuccess"

    const-string v12, "onGetApplicationInfoFail"

    invoke-static {v10, v3, v4, v11, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 842
    .local v7, "script":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 844
    .end local v7    # "script":Ljava/lang/String;
    :cond_1
    return-void

    .line 835
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 836
    move-object v3, v9

    goto :goto_0
.end method

.method public getAppsInstallTime(Ljava/lang/String;)V
    .locals 13
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2074
    new-instance v8, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v8, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2075
    .local v8, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const/4 v4, 0x1

    .line 2076
    .local v4, "failed":Z
    const/4 v5, 0x0

    .line 2079
    .local v5, "funToCall":Ljava/lang/String;
    :try_start_0
    const-string v10, "systemApps"

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2081
    .local v6, "includeSystemApps":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v10, v11}, Lcom/ironsource/environment/DeviceStatus;->getAppsInstallTime(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 2082
    .local v0, "appsInstallTime":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2083
    .local v1, "dataToSend":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2089
    .end local v0    # "appsInstallTime":Lorg/json/JSONObject;
    .end local v6    # "includeSystemApps":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_2

    .line 2090
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2091
    .local v3, "failFunToCall":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2092
    move-object v5, v3

    .line 2101
    .end local v3    # "failFunToCall":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2103
    :try_start_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 2107
    :goto_2
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, v5, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2108
    .local v7, "script":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 2110
    .end local v7    # "script":Ljava/lang/String;
    :cond_1
    return-void

    .line 2084
    .end local v1    # "dataToSend":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2085
    .local v2, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAppsInstallTime failed("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dataToSend":Ljava/lang/String;
    goto :goto_0

    .line 2095
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2096
    .local v9, "successFunToCall":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2097
    move-object v5, v9

    goto :goto_1

    .line 2104
    .end local v9    # "successFunToCall":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 2105
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method public getCachedFilesMap(Ljava/lang/String;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1142
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCachedFilesMap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1146
    .local v1, "funToCall":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1148
    new-instance v4, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v4, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v4, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v5, "path"

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1152
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v6, "path key does not exist"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1169
    .end local v4    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    :cond_0
    :goto_0
    return-void

    .line 1156
    .restart local v4    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    :cond_1
    const-string v5, "path"

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1159
    .local v2, "mapPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1160
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v6, "path file does not exist on disk"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1164
    :cond_2
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getCachedFilesMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "fileSystmeMap":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v6, "onGetCachedFilesMapSuccess"

    const-string v7, "onGetCachedFilesMapFail"

    invoke-static {v5, v1, v0, v6, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1167
    .local v3, "script":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeviceStatus(Ljava/lang/String;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 768
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDeviceStatus("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 771
    .local v6, "successFunToCall":Ljava/lang/String;
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "failFunToCall":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/Object;

    .line 774
    .local v4, "resultArr":[Ljava/lang/Object;
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3800(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v4

    .line 776
    const/4 v7, 0x0

    aget-object v3, v4, v7

    check-cast v3, Ljava/lang/String;

    .line 777
    .local v3, "params":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v4, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 779
    .local v1, "failed":Z
    const/4 v2, 0x0

    .line 781
    .local v2, "funToCall":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 782
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 783
    move-object v2, v0

    .line 791
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 792
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v8, "onGetDeviceStatusSuccess"

    const-string v9, "onGetDeviceStatusFail"

    invoke-static {v7, v2, v3, v8, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 793
    .local v5, "script":Ljava/lang/String;
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 795
    .end local v5    # "script":Ljava/lang/String;
    :cond_1
    return-void

    .line 786
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 787
    move-object v2, v6

    goto :goto_0
.end method

.method public getOrientation(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1116
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "funToCall":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->getOrientation(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1119
    .local v1, "params":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1120
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v4, "onGetOrientationSuccess"

    const-string v5, "onGetOrientationFail"

    invoke-static {v3, v0, v1, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1121
    .local v2, "script":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 1123
    .end local v2    # "script":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getUDIA(Ljava/lang/String;)V
    .locals 14
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1917
    const/4 v10, 0x0

    iput v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    .line 1919
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUDIA("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1923
    .local v2, "funToCall":Ljava/lang/String;
    new-instance v8, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v8, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1926
    .local v8, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v10, "getByFlag"

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1927
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v11, 0x0

    const-string v12, "getByFlag key does not exist"

    const/4 v13, 0x0

    invoke-static {v10, p1, v11, v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1995
    :cond_0
    :goto_0
    return-void

    .line 1932
    :cond_1
    const-string v10, "getByFlag"

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1933
    .local v4, "getByFlagStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1936
    .local v3, "getByFlag":I
    if-eqz v3, :cond_0

    .line 1941
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 1943
    .local v0, "binaryToggle":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1944
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v11, 0x0

    const-string v12, "fialed to convert getByFlag"

    const/4 v13, 0x0

    invoke-static {v10, p1, v11, v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1949
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1950
    .local v9, "strBld":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1953
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1956
    .local v1, "binaryToggleArr":[C
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1959
    .local v5, "jsArr":Lorg/json/JSONArray;
    const/4 v10, 0x3

    aget-char v10, v1, v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_3

    .line 1960
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1962
    .local v6, "jsObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "sessions"

    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSessions()Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1963
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->deleteSessions()V

    .line 1964
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1970
    .end local v6    # "jsObj":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    const/4 v10, 0x2

    aget-char v10, v1, v10

    const/16 v11, 0x31

    if-ne v10, v11, :cond_0

    .line 1972
    iget v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    .line 1975
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/ironsource/environment/LocationService;->getLastLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v7

    .line 1977
    .local v7, "location":Landroid/location/Location;
    if-eqz v7, :cond_4

    .line 1978
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1980
    .restart local v6    # "jsObj":Lorg/json/JSONObject;
    :try_start_1
    const-string v10, "latitude"

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v6, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1981
    const-string v10, "longitude"

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v6, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1982
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1983
    iget v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    .line 1984
    invoke-direct {p0, v2, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->sendResults(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1985
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "done location"

    invoke-static {v10, v11}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1986
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 1990
    .end local v6    # "jsObj":Lorg/json/JSONObject;
    :cond_4
    iget v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    goto/16 :goto_0

    .line 1965
    .end local v7    # "location":Landroid/location/Location;
    .restart local v6    # "jsObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method public getUserData(Ljava/lang/String;)V
    .locals 16
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    new-instance v15, Lcom/ironsource/sdk/data/SSAObj;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2175
    .local v15, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v1, "key"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    const-string v5, "key does not exist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2189
    :goto_0
    return-void

    .line 2180
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2181
    .local v12, "failFunToCall":Ljava/lang/String;
    const-string v1, "key"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2183
    .local v2, "mKey":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2185
    .local v3, "mValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 2187
    .local v13, "params":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2188
    .local v14, "script":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v14}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUserUniqueId(Ljava/lang/String;)V
    .locals 16
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2050
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserUniqueId("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    new-instance v15, Lcom/ironsource/sdk/data/SSAObj;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2054
    .local v15, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v1, "productType"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x0

    const-string v4, "productType does not exist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v2, v4, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2070
    :cond_0
    :goto_0
    return-void

    .line 2059
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2061
    .local v12, "funToCall":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2063
    const-string v1, "productType"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2064
    .local v5, "productType":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2065
    .local v3, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "userUniqueId"

    const-string v4, "productType"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 2067
    .local v13, "params":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "onGetUserUniqueIdSuccess"

    const-string v4, "onGetUserUniqueIdFail"

    invoke-static {v1, v12, v13, v2, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2068
    .local v14, "script":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v14}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initController(Ljava/lang/String;)V
    .locals 11
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 685
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initController("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 689
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v4, "stage"

    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 691
    const-string v4, "stage"

    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, "stage":Ljava/lang/String;
    const-string v4, "ready"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 695
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-static {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1502(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ControllerState;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 698
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    .line 701
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    .line 706
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSources()Ljava/util/Collection;

    move-result-object v1

    .line 707
    .local v1, "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 708
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v5

    if-ne v5, v10, :cond_0

    .line 709
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;)V

    goto :goto_0

    .line 713
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_1
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 714
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnInterstitialListener;)V

    .line 717
    :cond_2
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 718
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    .line 721
    :cond_3
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 722
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    .line 725
    :cond_4
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V

    .line 759
    .end local v1    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    .end local v3    # "stage":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 727
    .restart local v3    # "stage":Ljava/lang/String;
    :cond_6
    const-string v4, "loaded"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 729
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Loaded:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-static {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1502(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ControllerState;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    goto :goto_1

    .line 731
    :cond_7
    const-string v4, "failed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 733
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-static {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1502(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ControllerState;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 735
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSources()Ljava/util/Collection;

    move-result-object v1

    .line 736
    .restart local v1    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 737
    .restart local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v5

    if-ne v5, v10, :cond_8

    .line 738
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v6, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_2

    .line 742
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_9
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 743
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v4, v5, v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 746
    :cond_a
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 747
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v4, v5, v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 750
    :cond_b
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 751
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v4, v5, v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_1

    .line 756
    .end local v1    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    :cond_c
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "No STAGE mentioned! Should not get here!"

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onAdWindowsClosed(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2216
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAdWindowsClosed("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/AdUnitsState;->adClosed()V

    .line 2220
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceName(Ljava/lang/String;)V

    .line 2223
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2224
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "productType"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2226
    .local v1, "product":Ljava/lang/String;
    const-string v3, "demandSourceName"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2228
    .local v0, "demandSourceName":Ljava/lang/String;
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2229
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onRVAdClosed()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2238
    if-eqz v1, :cond_1

    .line 2239
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v4, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$21;

    invoke-direct {v4, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$21;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2253
    :cond_1
    return-void

    .line 2230
    :cond_2
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2231
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onISAdClosed()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2232
    :cond_3
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2233
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onOWAdClosed()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onGenericFunctionFail(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1753
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGenericFunctionFail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1756
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "genericFunctionListener was not found"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    :goto_0
    return-void

    .line 1760
    :cond_0
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1761
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$19;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$19;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1769
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1770
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onGenericFunctionFail"

    invoke-static {v2, v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGenericFunctionSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1735
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGenericFunctionSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "genericFunctionListener was not found"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :goto_0
    return-void

    .line 1742
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1748
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetApplicationInfoFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1369
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetApplicationInfoFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetApplicationInfoFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    return-void
.end method

.method public onGetApplicationInfoSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1361
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetApplicationInfoSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetApplicationInfoSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    return-void
.end method

.method public onGetCachedFilesMapFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1422
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCachedFilesMapFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetCachedFilesMapFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    return-void
.end method

.method public onGetCachedFilesMapSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1413
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCachedFilesMapSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1417
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetCachedFilesMapSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    return-void
.end method

.method public onGetDeviceStatusFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1299
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDeviceStatusFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetDeviceStatusFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    return-void
.end method

.method public onGetDeviceStatusSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1290
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDeviceStatusSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetDeviceStatusSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    return-void
.end method

.method public onGetUDIAFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUDIAFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    return-void
.end method

.method public onGetUDIASuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUDIASuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    return-void
.end method

.method public onGetUserCreditsFail(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2193
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetUserCreditsFail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2196
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2198
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2199
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$20;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$20;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2210
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2211
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onGetUserCreditsFail"

    invoke-static {v2, v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    return-void
.end method

.method public onGetUserUniqueIdFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserUniqueIdFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    return-void
.end method

.method public onGetUserUniqueIdSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserUniqueIdSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    return-void
.end method

.method public onInitInterstitialFail(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1508
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInitInterstitialFail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialInitSuccess(Z)V

    .line 1513
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1514
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1517
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/AdUnitsState;->reportInitInterstitial()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1520
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/ironsource/sdk/data/AdUnitsState;->setReportInitInterstitial(Z)V

    .line 1522
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1524
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$9;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$9;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1538
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v6, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onInitInterstitialFail"

    invoke-static {v2, v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    return-void
.end method

.method public onInitInterstitialSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInitInterstitialSuccess()"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onInitInterstitialSuccess"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialInitSuccess(Z)V

    .line 1486
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/AdUnitsState;->reportInitInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setReportInitInterstitial(Z)V

    .line 1491
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1504
    :cond_0
    return-void
.end method

.method public onInitOfferWallFail(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1622
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInitOfferWallFail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallInitSuccess(Z)V

    .line 1627
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1628
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1631
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/AdUnitsState;->reportInitOfferwall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1634
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 1636
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1638
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$14;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$14;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1652
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v6, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1653
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onInitOfferWallFail"

    invoke-static {v2, v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    return-void
.end method

.method public onInitOfferWallSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onInitOfferWallSuccess"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallInitSuccess(Z)V

    .line 1605
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/AdUnitsState;->reportInitOfferwall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 1608
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$13;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$13;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1618
    :cond_0
    return-void
.end method

.method public onInitRewardedVideoFail(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1319
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInitRewardedVideoFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    new-instance v3, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v3, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v4, "errMsg"

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1324
    .local v2, "message":Ljava/lang/String;
    const-string v4, "demandSourceName"

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1327
    .local v1, "demandSourceName":Ljava/lang/String;
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 1328
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_0

    .line 1329
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 1338
    :cond_0
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v5}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1340
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v5, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;

    invoke-direct {v5, p0, v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1355
    :cond_1
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v5, "onInitRewardedVideoFail"

    invoke-static {v4, v5, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    return-void
.end method

.method public onInitRewardedVideoSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1308
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitRewardedVideoSuccess("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    new-instance v0, Lcom/ironsource/sdk/data/SSABCParameters;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSABCParameters;-><init>(Ljava/lang/String;)V

    .line 1311
    .local v0, "ssaBCParameters":Lcom/ironsource/sdk/data/SSABCParameters;
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setSSABCParameters(Lcom/ironsource/sdk/data/SSABCParameters;)V

    .line 1313
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2, v4, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "onInitRewardedVideoSuccess"

    invoke-static {v1, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    return-void
.end method

.method public onLoadInterstitialFail(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1679
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadInterstitialFail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1684
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1687
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1689
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$16;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$16;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1700
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onLoadInterstitialFail"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    return-void
.end method

.method public onLoadInterstitialSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1658
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadInterstitialSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    invoke-direct {p0, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->setInterstitialAvailability(Z)V

    .line 1661
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1, v3, v4, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1664
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$15;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$15;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1674
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onLoadInterstitialSuccess"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    return-void
.end method

.method public onOfferWallGeneric(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOfferWallGeneric("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWGeneric(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    :cond_0
    return-void
.end method

.method public onShowInterstitialFail(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1706
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowInterstitialFail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->setInterstitialAvailability(Z)V

    .line 1709
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1710
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1716
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1728
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onShowInterstitialFail"

    invoke-static {v2, v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    return-void
.end method

.method public onShowInterstitialSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1579
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowInterstitialSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1584
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1585
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$12;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$12;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1593
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onShowInterstitialSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->setInterstitialAvailability(Z)V

    .line 1596
    return-void
.end method

.method public onShowOfferWallFail(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1453
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowOfferWallFail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1459
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1470
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1471
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onShowOfferWallFail"

    invoke-static {v2, v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    return-void
.end method

.method public onShowOfferWallSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1434
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowOfferWallSuccess("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1437
    const-string v1, "placementId"

    invoke-static {p1, v1}, Lcom/ironsource/sdk/utils/SDKUtils;->getValueFromJsonObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1439
    .local v0, "placementId":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1440
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$6;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$6;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1447
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2, v4, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "onShowOfferWallSuccess"

    invoke-static {v1, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    return-void
.end method

.method public onShowRewardedVideoFail(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1385
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShowRewardedVideoFail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1388
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "errMsg"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, "message":Ljava/lang/String;
    const-string v3, "demandSourceName"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1391
    .local v0, "demandSourceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1393
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v4, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;

    invoke-direct {v4, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1406
    :cond_0
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x1

    invoke-static {v3, p1, v4, v6, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1407
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v4, "onShowRewardedVideoFail"

    invoke-static {v3, v4, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    return-void
.end method

.method public onShowRewardedVideoSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1377
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowRewardedVideoSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1380
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onShowRewardedVideoSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    return-void
.end method

.method public onUDIAFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUDIAFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    return-void
.end method

.method public onUDIASuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUDIASuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    return-void
.end method

.method public onVideoStatusChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2257
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVideoStatusChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2259
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "productType"

    invoke-virtual {v1, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2261
    .local v0, "product":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2262
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2263
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2264
    .local v2, "status":Ljava/lang/String;
    const-string v3, "started"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2265
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoStarted()V

    .line 2279
    .end local v2    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2266
    .restart local v2    # "status":Ljava/lang/String;
    :cond_1
    const-string v3, "paused"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2267
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoPaused()V

    goto :goto_0

    .line 2268
    :cond_2
    const-string v3, "playing"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2269
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoResumed()V

    goto :goto_0

    .line 2270
    :cond_3
    const-string v3, "ended"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2271
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoEnded()V

    goto :goto_0

    .line 2272
    :cond_4
    const-string v3, "stopped"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2273
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoStopped()V

    goto :goto_0

    .line 2275
    :cond_5
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVideoStatusChanged: unknown status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1802
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openUrl("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    new-instance v4, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v4, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1805
    .local v4, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v6, "url"

    invoke-virtual {v4, v6}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1806
    .local v5, "url":Ljava/lang/String;
    const-string v6, "method"

    invoke-virtual {v4, v6}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1809
    .local v3, "method":Ljava/lang/String;
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    .line 1811
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    const-string v6, "external_browser"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1812
    invoke-static {v0, v5}, Lcom/ironsource/environment/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 1833
    :cond_0
    :goto_0
    return-void

    .line 1813
    :cond_1
    const-string v6, "webview"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1815
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {v2, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1816
    .local v2, "intent":Landroid/content/Intent;
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1817
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1818
    const-string v6, "immersive"

    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1819
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1829
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1830
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v6, p1, v7, v8, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1831
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1821
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v6, "store"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1823
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {v2, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1824
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1825
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_STORE:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1826
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1827
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public removeCloseEventHandler(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCloseEventHandler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$702(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    .line 1286
    return-void
.end method

.method public saveFile(Ljava/lang/String;)V
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 886
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveFile("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    new-instance v5, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v5, p1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 890
    .local v5, "ssaFile":Lcom/ironsource/sdk/data/SSAFile;
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ironsource/environment/DeviceStatus;->getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 892
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v7, "no_disk_space"

    invoke-static {v6, p1, v11, v7, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 939
    :goto_0
    return-void

    .line 896
    :cond_0
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 898
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v7, "sotrage_unavailable"

    invoke-static {v6, p1, v11, v7, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :cond_1
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isFileCached(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAFile;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 903
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v7, "file_already_exist"

    invoke-static {v6, p1, v11, v7, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_2
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/ironsource/environment/ConnectivityService;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 909
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v7, "no_network_connection"

    invoke-static {v6, p1, v11, v7, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 913
    :cond_3
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v7, 0x1

    invoke-static {v6, p1, v7, v10, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual {v5}, Lcom/ironsource/sdk/data/SSAFile;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "lastUpdateTimeObj":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 919
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 922
    .local v2, "lastUpdateTimeStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 925
    invoke-virtual {v5}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 927
    .local v3, "path":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 928
    invoke-virtual {v5}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 929
    .local v4, "splitArr":[Ljava/lang/String;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v0, v4, v6

    .line 934
    .end local v4    # "splitArr":[Ljava/lang/String;
    .local v0, "folder":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setCampaignLastUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    .end local v0    # "folder":Ljava/lang/String;
    .end local v2    # "lastUpdateTimeStr":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/ironsource/sdk/precache/DownloadManager;->downloadFile(Lcom/ironsource/sdk/data/SSAFile;)V

    goto :goto_0

    .line 931
    .restart local v2    # "lastUpdateTimeStr":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_5
    move-object v0, v3

    .restart local v0    # "folder":Ljava/lang/String;
    goto :goto_1
.end method

.method public setBackButtonState(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1852
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBackButtonState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1855
    .local v0, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "state"

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1857
    .local v1, "state":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setBackButtonState(Ljava/lang/String;)V

    .line 1858
    return-void
.end method

.method public setForceClose(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1837
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setForceClose("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1841
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "width"

    invoke-virtual {v1, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1842
    .local v2, "width":Ljava/lang/String;
    const-string v3, "height"

    invoke-virtual {v1, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1844
    .local v0, "hight":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$402(Lcom/ironsource/sdk/controller/IronSourceWebView;I)I

    .line 1845
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$502(Lcom/ironsource/sdk/controller/IronSourceWebView;I)I

    .line 1846
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v4, "position"

    invoke-virtual {v1, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$602(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 1848
    return-void
.end method

.method public setMixedContentAlwaysAllow(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 799
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMixedContentAlwaysAllow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$1;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$1;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 807
    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1127
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOrientation("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1130
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "orientation":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v3, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setOrientationState(Ljava/lang/String;)V

    .line 1133
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v1

    .line 1135
    .local v1, "rotation":I
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1136
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onOrientationChanged(Ljava/lang/String;I)V

    .line 1138
    :cond_0
    return-void
.end method

.method public setStoreSearchKeys(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStoreSearchKeys("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setSearchKeys(Ljava/lang/String;)V

    .line 1865
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 17
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUserData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    new-instance v15, Lcom/ironsource/sdk/data/SSAObj;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2142
    .local v15, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v1, "key"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    const-string v5, "key does not exist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2167
    :goto_0
    return-void

    .line 2147
    :cond_0
    const-string v1, "value"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    const-string v5, "value does not exist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2152
    :cond_1
    const-string v1, "key"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2153
    .local v2, "mKey":Ljava/lang/String;
    const-string v1, "value"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2155
    .local v3, "mValue":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setUserData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 2157
    .local v13, "result":Z
    if-eqz v13, :cond_2

    .line 2159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2160
    .local v16, "successFunToCall":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 2161
    .local v12, "params":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-object/from16 v0, v16

    invoke-static {v1, v0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2162
    .local v14, "script":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v14}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 2165
    .end local v12    # "params":Ljava/lang/String;
    .end local v14    # "script":Ljava/lang/String;
    .end local v16    # "successFunToCall":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    const-string v5, "SetUserData failed writing to shared preferences"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserUniqueId(Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2027
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUserUniqueId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2031
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v4, "userUniqueId"

    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "productType"

    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2032
    :cond_0
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v5, "uniqueId or productType does not exist"

    invoke-static {v4, p1, v8, v5, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2046
    :goto_0
    return-void

    .line 2036
    :cond_1
    const-string v4, "userUniqueId"

    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2037
    .local v3, "uniqueId":Ljava/lang/String;
    const-string v4, "productType"

    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2039
    .local v0, "productType":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setUniqueId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2041
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 2042
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2044
    :cond_2
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v5, "setUserUniqueId failed"

    invoke-static {v4, p1, v8, v5, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWebviewBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWebviewBackgroundColor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 1872
    return-void
.end method

.method public toggleUDIA(Ljava/lang/String;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1876
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleUDIA("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1881
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v5, "toggle"

    invoke-virtual {v2, v5}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1882
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v6, "toggle key does not exist"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1912
    :cond_0
    :goto_0
    return-void

    .line 1887
    :cond_1
    const-string v5, "toggle"

    invoke-virtual {v2, v5}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1888
    .local v4, "toggleStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1891
    .local v3, "toggle":I
    if-eqz v3, :cond_0

    .line 1896
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 1898
    .local v0, "binaryToggle":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1899
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v6, "fialed to convert toggle"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1904
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1907
    .local v1, "binaryToggleArr":[C
    const/4 v5, 0x3

    aget-char v5, v1, v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_3

    .line 1908
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setShouldRegisterSessions(Z)V

    goto :goto_0

    .line 1910
    :cond_3
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setShouldRegisterSessions(Z)V

    goto :goto_0
.end method
