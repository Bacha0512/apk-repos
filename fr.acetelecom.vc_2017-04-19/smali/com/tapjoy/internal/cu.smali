.class public final Lcom/tapjoy/internal/cu;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/tapjoy/internal/cx;

.field private static final b:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/cu$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/cu$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/cu;->a:Lcom/tapjoy/internal/cx;

    new-instance v0, Lcom/tapjoy/internal/cu$2;

    invoke-direct {v0}, Lcom/tapjoy/internal/cu$2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/cu;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
