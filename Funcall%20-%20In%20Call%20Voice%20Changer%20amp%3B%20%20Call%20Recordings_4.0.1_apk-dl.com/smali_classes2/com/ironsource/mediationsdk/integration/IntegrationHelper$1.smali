.class final Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;
.super Ljava/util/ArrayList;
.source "IntegrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v0, Landroid/util/Pair;

    const-string v1, "javax.inject.Inject"

    const-string v2, "javax.inject-1.jar"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Landroid/util/Pair;

    const-string v1, "dagger.Module"

    const-string v2, "dagger-2.7.jar"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method
