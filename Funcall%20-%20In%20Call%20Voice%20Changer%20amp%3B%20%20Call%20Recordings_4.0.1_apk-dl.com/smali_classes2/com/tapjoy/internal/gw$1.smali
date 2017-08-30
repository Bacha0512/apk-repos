.class final Lcom/tapjoy/internal/gw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    .line 1079
    new-instance v0, Lcom/tapjoy/internal/gw;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/gw;-><init>(Lcom/tapjoy/internal/br;)V

    .line 76
    return-object v0
.end method
