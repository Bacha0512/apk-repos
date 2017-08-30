.class public final Lcom/tapjoy/internal/er;
.super Lcom/tapjoy/internal/gf;
.source "SourceFile"


# instance fields
.field private final b:Lcom/tapjoy/internal/et;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/tapjoy/internal/er;

    invoke-direct {v0}, Lcom/tapjoy/internal/er;-><init>()V

    invoke-static {v0}, Lcom/tapjoy/internal/gf;->a(Lcom/tapjoy/internal/gf;)V

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/tapjoy/internal/gf;-><init>()V

    .line 26
    new-instance v0, Lcom/tapjoy/internal/er$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/er$1;-><init>(Lcom/tapjoy/internal/er;)V

    iput-object v0, p0, Lcom/tapjoy/internal/er;->b:Lcom/tapjoy/internal/et;

    .line 64
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method


# virtual methods
.method protected final a(Lcom/tapjoy/internal/gf$a;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tapjoy/internal/er;->b:Lcom/tapjoy/internal/et;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/et;->c(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tapjoy/internal/er;->b:Lcom/tapjoy/internal/et;

    .line 1027
    iget-object v0, v0, Lcom/tapjoy/internal/et;->b:Lcom/tapjoy/internal/et$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 68
    goto :goto_0
.end method
