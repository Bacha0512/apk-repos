.class public final Lcom/tapjoy/internal/gd$f;
.super Lcom/tapjoy/internal/do;

# interfaces
.implements Lcom/tapjoy/internal/gd$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gd$f$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/dw;

.field private static final d:Lcom/tapjoy/internal/gd$f;


# instance fields
.field c:Lcom/tapjoy/internal/gd$i;

.field private final e:Lcom/tapjoy/internal/dk;

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$f$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$f$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gd$f;->b:Lcom/tapjoy/internal/dw;

    new-instance v0, Lcom/tapjoy/internal/gd$f;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$f;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gd$f;->d:Lcom/tapjoy/internal/gd$f;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$f;->m()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    iput-byte v0, p0, Lcom/tapjoy/internal/gd$f;->i:B

    iput v0, p0, Lcom/tapjoy/internal/gd$f;->j:I

    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f;->e:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    iput-byte v0, p0, Lcom/tapjoy/internal/gd$f;->i:B

    iput v0, p0, Lcom/tapjoy/internal/gd$f;->j:I

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$f;->m()V

    invoke-static {}, Lcom/tapjoy/internal/dk;->g()Lcom/tapjoy/internal/dk$b;

    move-result-object v2

    const/16 v0, 0x1000

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dm;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dm;

    move-result-object v3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->a()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p1, v4, v3}, Lcom/tapjoy/internal/dl;->a(ILcom/tapjoy/internal/dm;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->e()I

    move-result v5

    invoke-static {v5}, Lcom/tapjoy/internal/gd$i;->a(I)Lcom/tapjoy/internal/gd$i;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/dm;->e(I)V

    invoke-virtual {v3, v5}, Lcom/tapjoy/internal/dm;->e(I)V
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iput-object p0, v0, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v3}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$f;->e:Lcom/tapjoy/internal/dk;

    :goto_1
    throw v0

    :cond_1
    :try_start_3
    iget v4, p0, Lcom/tapjoy/internal/gd$f;->f:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tapjoy/internal/gd$f;->f:I

    iput-object v6, p0, Lcom/tapjoy/internal/gd$f;->c:Lcom/tapjoy/internal/gd$i;
    :try_end_3
    .catch Lcom/tapjoy/internal/dq; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/tapjoy/internal/dq;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/dq;-><init>(Ljava/lang/String;)V

    iput-object p0, v1, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :sswitch_2
    :try_start_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v4

    iget v5, p0, Lcom/tapjoy/internal/gd$f;->f:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/tapjoy/internal/gd$f;->f:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$f;->g:Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v4

    iget v5, p0, Lcom/tapjoy/internal/gd$f;->f:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/tapjoy/internal/gd$f;->f:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$f;->h:Ljava/lang/Object;
    :try_end_5
    .catch Lcom/tapjoy/internal/dq; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_6
    invoke-virtual {v3}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f;->e:Lcom/tapjoy/internal/dk;

    :goto_2
    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f;->e:Lcom/tapjoy/internal/dk;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$f;->e:Lcom/tapjoy/internal/dk;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$f;->e:Lcom/tapjoy/internal/dk;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$f;->e:Lcom/tapjoy/internal/dk;

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gd$f;-><init>(Lcom/tapjoy/internal/dl;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/do$a;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/do;-><init>(B)V

    iput-byte v1, p0, Lcom/tapjoy/internal/gd$f;->i:B

    iput v1, p0, Lcom/tapjoy/internal/gd$f;->j:I

    iget-object v0, p1, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f;->e:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/do$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gd$f;-><init>(Lcom/tapjoy/internal/do$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$f;I)I
    .locals 0

    iput p1, p0, Lcom/tapjoy/internal/gd$f;->f:I

    return p1
.end method

.method public static a(Lcom/tapjoy/internal/gd$f;)Lcom/tapjoy/internal/gd$f$a;
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/gd$f$a;->e()Lcom/tapjoy/internal/gd$f$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gd$f$a;->a(Lcom/tapjoy/internal/gd$f;)Lcom/tapjoy/internal/gd$f$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$f;Lcom/tapjoy/internal/gd$i;)Lcom/tapjoy/internal/gd$i;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$f;->c:Lcom/tapjoy/internal/gd$i;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$f;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gd$f;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$f;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/internal/gd$f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$f;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/tapjoy/internal/gd$f;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$f;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/gd$f;)Lcom/tapjoy/internal/dk;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$f;->e:Lcom/tapjoy/internal/dk;

    return-object v0
.end method

.method public static d()Lcom/tapjoy/internal/gd$f;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/gd$f;->d:Lcom/tapjoy/internal/gd$f;

    return-object v0
.end method

.method public static j()Lcom/tapjoy/internal/gd$f$a;
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/gd$f$a;->e()Lcom/tapjoy/internal/gd$f$a;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$f;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f;->g:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private l()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$f;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f;->h:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private m()V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f;->c:Lcom/tapjoy/internal/gd$i;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f;->g:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$f;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dm;)V
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->b()I

    iget v0, p0, Lcom/tapjoy/internal/gd$f;->f:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gd$f;->c:Lcom/tapjoy/internal/gd$i;

    iget v0, v0, Lcom/tapjoy/internal/gd$i;->d:I

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->a(I)V

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$f;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$f;->k()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gd$f;->f:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$f;->l()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gd$f;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->c(Lcom/tapjoy/internal/dk;)V

    return-void
.end method

.method public final b()I
    .locals 4

    const/4 v3, 0x2

    iget v0, p0, Lcom/tapjoy/internal/gd$f;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/tapjoy/internal/gd$f;->f:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$f;->c:Lcom/tapjoy/internal/gd$i;

    iget v0, v0, Lcom/tapjoy/internal/gd$i;->d:I

    invoke-static {v0}, Lcom/tapjoy/internal/dm;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gd$f;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$f;->k()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gd$f;->f:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$f;->l()Lcom/tapjoy/internal/dk;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gd$f;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$f;->j:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/tapjoy/internal/gd$f;->i:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->e()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/tapjoy/internal/gd$f;->i:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->f()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/tapjoy/internal/gd$f;->i:B

    move v0, v1

    goto :goto_0

    :cond_3
    iput-byte v0, p0, Lcom/tapjoy/internal/gd$f;->i:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/tapjoy/internal/gd$f;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gd$f;

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gd$f;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$f;->e()Z

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tapjoy/internal/gd$f;->c:Lcom/tapjoy/internal/gd$i;

    iget-object v3, p1, Lcom/tapjoy/internal/gd$f;->c:Lcom/tapjoy/internal/gd$i;

    if-ne v0, v3, :cond_7

    move v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$f;->f()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->h()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$f;->h()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->h()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$f;->f:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$f;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$f;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$f;->f:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$f;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/gd$f;->a:I

    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/tapjoy/internal/gd$f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/tapjoy/internal/gd$f;->c:Lcom/tapjoy/internal/gd$i;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/dp$a;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gd$f;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$f;->a:I

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$f;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$f;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
