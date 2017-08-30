.class abstract Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;
.super Ljava/lang/Object;
.source "MediationInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "InitRunnable"
.end annotation


# instance fields
.field isRecoverable:Z

.field protected listener:Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;

.field reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/ironsource/mediationsdk/MediationInitializer;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;->isRecoverable:Z

    .line 47
    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable$1;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;->listener:Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;

    return-void
.end method
