.class public abstract Lcom/tapjoy/internal/di;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/dw;


# static fields
.field private static final a:Lcom/tapjoy/internal/dn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/dn;->a()Lcom/tapjoy/internal/dn;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/di;->a:Lcom/tapjoy/internal/dn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/tapjoy/internal/du;)Lcom/tapjoy/internal/du;
    .locals 2

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/tapjoy/internal/du;->c()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/tapjoy/internal/dh;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    :goto_0
    new-instance v1, Lcom/tapjoy/internal/dq;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/dq;-><init>(Ljava/lang/String;)V

    iput-object p0, v1, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    throw v1

    :cond_0
    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private a(Ljava/io/InputStream;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;
    .locals 3

    new-instance v1, Lcom/tapjoy/internal/dl;

    invoke-direct {v1, p1}, Lcom/tapjoy/internal/dl;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1, p2}, Lcom/tapjoy/internal/di;->a(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/du;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/dl;->a(I)V
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    iput-object v0, v1, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    throw v1
.end method

.method private a([BILcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;
    .locals 3

    :try_start_0
    invoke-static {p1, p2}, Lcom/tapjoy/internal/dl;->a([BI)Lcom/tapjoy/internal/dl;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/tapjoy/internal/di;->a(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/du;
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/dl;->a(I)V
    :try_end_1
    .catch Lcom/tapjoy/internal/dq; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    iput-object v0, v1, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    throw v1
    :try_end_2
    .catch Lcom/tapjoy/internal/dq; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/di;->a:Lcom/tapjoy/internal/dn;

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/di;->a(Ljava/io/InputStream;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/di;->a(Lcom/tapjoy/internal/du;)Lcom/tapjoy/internal/du;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a([B)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/di;->a:Lcom/tapjoy/internal/dn;

    array-length v1, p1

    invoke-direct {p0, p1, v1, v0}, Lcom/tapjoy/internal/di;->a([BILcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/di;->a(Lcom/tapjoy/internal/du;)Lcom/tapjoy/internal/du;

    move-result-object v0

    return-object v0
.end method
