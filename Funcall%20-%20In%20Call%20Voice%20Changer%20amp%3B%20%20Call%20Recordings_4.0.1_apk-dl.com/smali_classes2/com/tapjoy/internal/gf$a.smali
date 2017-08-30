.class public final Lcom/tapjoy/internal/gf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Lcom/tapjoy/internal/eg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tapjoy/internal/gf$a;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/tapjoy/internal/gf$a;->b:Ljava/lang/String;

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/gf$a;->c:J

    .line 22
    new-instance v0, Lcom/tapjoy/internal/eg;

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v2, v3}, Lcom/tapjoy/internal/eg;-><init>(J)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf$a;->d:Lcom/tapjoy/internal/eg;

    .line 23
    return-void
.end method
