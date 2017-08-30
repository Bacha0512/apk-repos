.class final Lcom/fyber/mediation/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/mediation/b;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/mediation/b$3;->a:Lcom/fyber/mediation/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/fyber/mediation/b$3;->a:Lcom/fyber/mediation/b;

    invoke-static {v0}, Lcom/fyber/mediation/b;->a(Lcom/fyber/mediation/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    sget v2, Lcom/fyber/mediation/a;->a:I

    invoke-virtual {v0, v2}, Lcom/fyber/mediation/MediationAdapter;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->startPrecaching()V

    goto :goto_0

    :cond_1
    return-void
.end method
