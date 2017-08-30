.class public final Lcom/tapjoy/internal/eq;
.super Lcom/tapjoy/internal/fx;


# instance fields
.field private final b:Lcom/tapjoy/internal/er;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/eq;

    invoke-direct {v0}, Lcom/tapjoy/internal/eq;-><init>()V

    invoke-static {v0}, Lcom/tapjoy/internal/fx;->a(Lcom/tapjoy/internal/fx;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/fx;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/eq$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/eq$1;-><init>(Lcom/tapjoy/internal/eq;)V

    iput-object v0, p0, Lcom/tapjoy/internal/eq;->b:Lcom/tapjoy/internal/er;

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected final a(Lcom/tapjoy/internal/fx$a;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/eq;->b:Lcom/tapjoy/internal/er;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/er;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final b()Z
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/eq;->b:Lcom/tapjoy/internal/er;

    iget-object v0, v0, Lcom/tapjoy/internal/er;->b:Lcom/tapjoy/internal/er$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
