.class final Lcom/tapjoy/internal/gs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 30
    .line 1033
    const-string v1, ""

    .line 1034
    const-string v0, ""

    .line 1036
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    .line 1038
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1039
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v2

    .line 1040
    const-string v3, "campaign_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1041
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/br;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1042
    :cond_0
    const-string v3, "product_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1043
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/br;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1045
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_0

    .line 1048
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    .line 1050
    new-instance v2, Lcom/tapjoy/internal/gs;

    invoke-direct {v2, v1, v0}, Lcom/tapjoy/internal/gs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-object v2
.end method
