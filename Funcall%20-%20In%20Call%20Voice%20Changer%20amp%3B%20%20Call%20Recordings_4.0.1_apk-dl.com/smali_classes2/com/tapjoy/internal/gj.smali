.class abstract Lcom/tapjoy/internal/gj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/fg;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reward"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "purchase"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "custom_action"

    aput-object v2, v0, v1

    .line 19
    sput-object v0, Lcom/tapjoy/internal/gj;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tapjoy/internal/br;)Lcom/tapjoy/internal/gj;
    .locals 1

    .prologue
    .line 42
    const-string v0, "reward"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/tapjoy/internal/gu;->a:Lcom/tapjoy/internal/bm;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/br;->a(Lcom/tapjoy/internal/bm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gj;

    .line 50
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const-string v0, "purchase"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/tapjoy/internal/gs;->a:Lcom/tapjoy/internal/bm;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/br;->a(Lcom/tapjoy/internal/bm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gj;

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tapjoy/internal/gj;->a:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/fh;)V
    .locals 4

    .prologue
    .line 24
    instance-of v0, p0, Lcom/tapjoy/internal/fk;

    if-eqz v0, :cond_1

    .line 25
    check-cast p0, Lcom/tapjoy/internal/fk;

    .line 26
    invoke-interface {p0}, Lcom/tapjoy/internal/fk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/tapjoy/internal/fk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tapjoy/internal/fh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    instance-of v0, p0, Lcom/tapjoy/internal/fl;

    if-eqz v0, :cond_0

    .line 28
    check-cast p0, Lcom/tapjoy/internal/fl;

    .line 29
    invoke-interface {p0}, Lcom/tapjoy/internal/fl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/tapjoy/internal/fl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/tapjoy/internal/fl;->c()I

    move-result v2

    invoke-interface {p0}, Lcom/tapjoy/internal/fl;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/tapjoy/internal/fh;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
