.class public abstract Lcom/tapjoy/internal/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/dw;


# static fields
.field private static final a:Lcom/tapjoy/internal/dn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/tapjoy/internal/dn;->a()Lcom/tapjoy/internal/dn;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/di;->a:Lcom/tapjoy/internal/dn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/tapjoy/internal/du;)Lcom/tapjoy/internal/du;
    .locals 2

    .prologue
    .line 70
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/tapjoy/internal/du;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    instance-of v0, p0, Lcom/tapjoy/internal/dh;

    if-eqz v0, :cond_0

    .line 1102
    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    .line 2081
    :goto_0
    new-instance v1, Lcom/tapjoy/internal/dq;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/dq;-><init>(Ljava/lang/String;)V

    .line 3057
    iput-object p0, v1, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 71
    throw v1

    .line 1059
    :cond_0
    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    goto :goto_0

    .line 75
    :cond_1
    return-object p0
.end method

.method private a(Ljava/io/InputStream;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;
    .locals 3

    .prologue
    .line 191
    .line 5058
    new-instance v1, Lcom/tapjoy/internal/dl;

    invoke-direct {v1, p1}, Lcom/tapjoy/internal/dl;-><init>(Ljava/io/InputStream;)V

    .line 192
    invoke-virtual {p0, v1, p2}, Lcom/tapjoy/internal/di;->a(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/du;

    .line 194
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/dl;->a(I)V
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    return-object v0

    .line 196
    :catch_0
    move-exception v1

    .line 6057
    iput-object v0, v1, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 196
    throw v1
.end method

.method private a([BILcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;
    .locals 3

    .prologue
    .line 136
    :try_start_0
    invoke-static {p1, p2}, Lcom/tapjoy/internal/dl;->a([BI)Lcom/tapjoy/internal/dl;

    move-result-object v1

    .line 137
    invoke-virtual {p0, v1, p3}, Lcom/tapjoy/internal/di;->a(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/du;
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/dl;->a(I)V
    :try_end_1
    .catch Lcom/tapjoy/internal/dq; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    return-object v0

    .line 141
    :catch_0
    move-exception v1

    .line 4057
    :try_start_2
    iput-object v0, v1, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 141
    throw v1
    :try_end_2
    .catch Lcom/tapjoy/internal/dq; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    :catch_1
    move-exception v0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    .line 6215
    sget-object v0, Lcom/tapjoy/internal/di;->a:Lcom/tapjoy/internal/dn;

    .line 7209
    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/di;->a(Ljava/io/InputStream;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/di;->a(Lcom/tapjoy/internal/du;)Lcom/tapjoy/internal/du;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method public final bridge synthetic a([B)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    .line 8185
    sget-object v0, Lcom/tapjoy/internal/di;->a:Lcom/tapjoy/internal/dn;

    .line 9180
    array-length v1, p1

    .line 10168
    invoke-direct {p0, p1, v1, v0}, Lcom/tapjoy/internal/di;->a([BILcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/di;->a(Lcom/tapjoy/internal/du;)Lcom/tapjoy/internal/du;

    move-result-object v0

    .line 49
    return-object v0
.end method
