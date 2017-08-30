.class public final Lcom/tapjoy/internal/fx$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fx;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/fx$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/internal/fx$a;->b:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/fx$a;->c:J

    new-instance v0, Lcom/tapjoy/internal/eg;

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v2, v3}, Lcom/tapjoy/internal/eg;-><init>(J)V

    iput-object v0, p0, Lcom/tapjoy/internal/fx$a;->d:Lcom/tapjoy/internal/eg;

    return-void
.end method
