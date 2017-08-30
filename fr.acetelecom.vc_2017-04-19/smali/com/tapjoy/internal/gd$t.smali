.class public final Lcom/tapjoy/internal/gd$t;
.super Lcom/tapjoy/internal/do;

# interfaces
.implements Lcom/tapjoy/internal/gd$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gd$t$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/dw;

.field private static final e:Lcom/tapjoy/internal/gd$t;


# instance fields
.field public c:J

.field d:J

.field private final f:Lcom/tapjoy/internal/dk;

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$t$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$t$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gd$t;->b:Lcom/tapjoy/internal/dw;

    new-instance v0, Lcom/tapjoy/internal/gd$t;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$t;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gd$t;->e:Lcom/tapjoy/internal/gd$t;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$t;->k()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    iput-byte v0, p0, Lcom/tapjoy/internal/gd$t;->i:B

    iput v0, p0, Lcom/tapjoy/internal/gd$t;->j:I

    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$t;->f:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    iput-byte v0, p0, Lcom/tapjoy/internal/gd$t;->i:B

    iput v0, p0, Lcom/tapjoy/internal/gd$t;->j:I

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$t;->k()V

    invoke-static {}, Lcom/tapjoy/internal/dk;->g()Lcom/tapjoy/internal/dk$b;

    move-result-object v2

    const/16 v0, 0x1000

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dm;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dm;

    move-result-object v3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

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
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v4

    iget v5, p0, Lcom/tapjoy/internal/gd$t;->g:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/tapjoy/internal/gd$t;->g:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$t;->h:Ljava/lang/Object;
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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$t;->f:Lcom/tapjoy/internal/dk;

    :goto_1
    throw v0

    :sswitch_2
    :try_start_3
    iget v4, p0, Lcom/tapjoy/internal/gd$t;->g:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/tapjoy/internal/gd$t;->g:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->f()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tapjoy/internal/gd$t;->c:J
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

    :sswitch_3
    :try_start_5
    iget v4, p0, Lcom/tapjoy/internal/gd$t;->g:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/tapjoy/internal/gd$t;->g:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->f()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tapjoy/internal/gd$t;->d:J
    :try_end_5
    .catch Lcom/tapjoy/internal/dq; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_6
    invoke-virtual {v3}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$t;->f:Lcom/tapjoy/internal/dk;

    :goto_2
    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$t;->f:Lcom/tapjoy/internal/dk;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$t;->f:Lcom/tapjoy/internal/dk;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$t;->f:Lcom/tapjoy/internal/dk;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$t;->f:Lcom/tapjoy/internal/dk;

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gd$t;-><init>(Lcom/tapjoy/internal/dl;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/do$a;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/do;-><init>(B)V

    iput-byte v1, p0, Lcom/tapjoy/internal/gd$t;->i:B

    iput v1, p0, Lcom/tapjoy/internal/gd$t;->j:I

    iget-object v0, p1, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$t;->f:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/do$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gd$t;-><init>(Lcom/tapjoy/internal/do$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$t;I)I
    .locals 0

    iput p1, p0, Lcom/tapjoy/internal/gd$t;->g:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$t;J)J
    .locals 1

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$t;->c:J

    return-wide p1
.end method

.method public static a(Lcom/tapjoy/internal/gd$t;)Lcom/tapjoy/internal/gd$t$a;
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/gd$t$a;->e()Lcom/tapjoy/internal/gd$t$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gd$t$a;->a(Lcom/tapjoy/internal/gd$t;)Lcom/tapjoy/internal/gd$t$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$t;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$t;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gd$t;J)J
    .locals 1

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$t;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gd$t;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$t;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/gd$t;)Lcom/tapjoy/internal/dk;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$t;->f:Lcom/tapjoy/internal/dk;

    return-object v0
.end method

.method public static d()Lcom/tapjoy/internal/gd$t;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/gd$t;->e:Lcom/tapjoy/internal/gd$t;

    return-object v0
.end method

.method public static i()Lcom/tapjoy/internal/gd$t$a;
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/gd$t$a;->e()Lcom/tapjoy/internal/gd$t$a;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$t;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$t;->h:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private k()V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$t;->h:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/tapjoy/internal/gd$t;->c:J

    iput-wide v2, p0, Lcom/tapjoy/internal/gd$t;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dm;)V
    .locals 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->b()I

    iget v0, p0, Lcom/tapjoy/internal/gd$t;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$t;->j()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$t;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-wide v0, p0, Lcom/tapjoy/internal/gd$t;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/tapjoy/internal/dm;->a(IJ)V

    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gd$t;->g:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$t;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/tapjoy/internal/dm;->a(IJ)V

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gd$t;->f:Lcom/tapjoy/internal/dk;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->c(Lcom/tapjoy/internal/dk;)V

    return-void
.end method

.method public final b()I
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/tapjoy/internal/gd$t;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/tapjoy/internal/gd$t;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$t;->j()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gd$t;->g:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$t;->c:J

    invoke-static {v4, v2, v3}, Lcom/tapjoy/internal/dm;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gd$t;->g:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$t;->d:J

    invoke-static {v1, v2, v3}, Lcom/tapjoy/internal/dm;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gd$t;->f:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$t;->j:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/tapjoy/internal/gd$t;->i:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->e()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/tapjoy/internal/gd$t;->i:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->g()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/tapjoy/internal/gd$t;->i:B

    move v0, v1

    goto :goto_0

    :cond_3
    iput-byte v0, p0, Lcom/tapjoy/internal/gd$t;->i:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/tapjoy/internal/gd$t;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gd$t;

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gd$t;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$t;->e()Z

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$t;->g()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_9

    iget-wide v4, p0, Lcom/tapjoy/internal/gd$t;->c:J

    iget-wide v6, p1, Lcom/tapjoy/internal/gd$t;->c:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_9

    move v0, v1

    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->h()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$t;->h()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->h()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v0, :cond_5

    iget-wide v4, p0, Lcom/tapjoy/internal/gd$t;->d:J

    iget-wide v6, p1, Lcom/tapjoy/internal/gd$t;->d:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

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

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$t;->h:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$t;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$t;->g:I

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

.method public final h()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$t;->g:I

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
    .locals 4

    iget v0, p0, Lcom/tapjoy/internal/gd$t;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/gd$t;->a:I

    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/tapjoy/internal/gd$t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$t;->c:J

    invoke-static {v2, v3}, Lcom/tapjoy/internal/dp;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$t;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$t;->d:J

    invoke-static {v2, v3}, Lcom/tapjoy/internal/dp;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gd$t;->f:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$t;->a:I

    goto :goto_0
.end method
