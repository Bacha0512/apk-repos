.class Lcom/ironsource/mediationsdk/MediationInitializer$2;
.super Ljava/lang/Object;
.source "MediationInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/MediationInitializer;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/32 v2, 0xea60

    .line 246
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer$2;JJ)V

    .line 261
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    .line 246
    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v6, v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1802(Lcom/ironsource/mediationsdk/MediationInitializer;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 262
    return-void
.end method
