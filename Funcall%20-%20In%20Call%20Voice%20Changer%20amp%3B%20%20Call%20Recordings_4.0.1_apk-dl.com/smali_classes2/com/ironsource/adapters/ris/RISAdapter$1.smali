.class Lcom/ironsource/adapters/ris/RISAdapter$1;
.super Ljava/lang/Object;
.source "RISAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/ris/RISAdapter;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/ris/RISAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/ris/RISAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/adapters/ris/RISAdapter;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->this$0:Lcom/ironsource/adapters/ris/RISAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$appKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->this$0:Lcom/ironsource/adapters/ris/RISAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/ironsource/sdk/SSAFactory;->getPublisherInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/SSAPublisher;

    move-result-object v1

    # setter for: Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;
    invoke-static {v0, v1}, Lcom/ironsource/adapters/ris/RISAdapter;->access$002(Lcom/ironsource/adapters/ris/RISAdapter;Lcom/ironsource/sdk/SSAPublisher;)Lcom/ironsource/sdk/SSAPublisher;

    .line 101
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/sdk/SSAFactory;->getPublisherInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/SSAPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$appKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->this$0:Lcom/ironsource/adapters/ris/RISAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->this$0:Lcom/ironsource/adapters/ris/RISAdapter;

    invoke-interface/range {v0 .. v5}, Lcom/ironsource/sdk/SSAPublisher;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;)V

    .line 102
    return-void
.end method
