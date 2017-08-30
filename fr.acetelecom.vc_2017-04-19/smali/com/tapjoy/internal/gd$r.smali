.class public final Lcom/tapjoy/internal/gd$r;
.super Lcom/tapjoy/internal/do;

# interfaces
.implements Lcom/tapjoy/internal/gd$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gd$r$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/dw;

.field private static final g:Lcom/tapjoy/internal/gd$r;


# instance fields
.field c:I

.field d:D

.field e:I

.field f:J

.field private final h:Lcom/tapjoy/internal/dk;

.field private i:I

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/Object;

.field private t:B

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$r$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$r$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gd$r;->b:Lcom/tapjoy/internal/dw;

    new-instance v0, Lcom/tapjoy/internal/gd$r;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$r;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gd$r;->g:Lcom/tapjoy/internal/gd$r;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$r;->N()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    iput-byte v0, p0, Lcom/tapjoy/internal/gd$r;->t:B

    iput v0, p0, Lcom/tapjoy/internal/gd$r;->u:I

    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->h:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    iput-byte v0, p0, Lcom/tapjoy/internal/gd$r;->t:B

    iput v0, p0, Lcom/tapjoy/internal/gd$r;->u:I

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->N()V

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

    iget v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$r;->j:Ljava/lang/Object;
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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->h:Lcom/tapjoy/internal/dk;

    :goto_1
    throw v0

    :sswitch_2
    :try_start_3
    iget v4, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/tapjoy/internal/gd$r;->i:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->e()I

    move-result v4

    iput v4, p0, Lcom/tapjoy/internal/gd$r;->c:I
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
    iget v4, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/tapjoy/internal/gd$r;->i:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/tapjoy/internal/gd$r;->d:D

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v4

    iget v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$r;->k:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v4

    iget v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$r;->l:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v4

    iget v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$r;->m:Ljava/lang/Object;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v4

    iget v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$r;->n:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v4

    iget v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$r;->o:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_9
    iget v4, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/tapjoy/internal/gd$r;->i:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->e()I

    move-result v4

    iput v4, p0, Lcom/tapjoy/internal/gd$r;->e:I

    goto/16 :goto_0

    :sswitch_a
    iget v4, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/tapjoy/internal/gd$r;->i:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->f()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tapjoy/internal/gd$r;->f:J

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v4

    iget v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$r;->p:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v4

    iget v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$r;->q:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v4

    iget v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$r;->r:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->d()Lcom/tapjoy/internal/dk;

    move-result-object v4

    iget v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lcom/tapjoy/internal/gd$r;->i:I

    iput-object v4, p0, Lcom/tapjoy/internal/gd$r;->s:Ljava/lang/Object;
    :try_end_5
    .catch Lcom/tapjoy/internal/dq; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_1
    :try_start_6
    invoke-virtual {v3}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->h:Lcom/tapjoy/internal/dk;

    :goto_2
    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->h:Lcom/tapjoy/internal/dk;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->h:Lcom/tapjoy/internal/dk;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->h:Lcom/tapjoy/internal/dk;

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->h:Lcom/tapjoy/internal/dk;

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x19 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gd$r;-><init>(Lcom/tapjoy/internal/dl;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/do$a;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/do;-><init>(B)V

    iput-byte v1, p0, Lcom/tapjoy/internal/gd$r;->t:B

    iput v1, p0, Lcom/tapjoy/internal/gd$r;->u:I

    iget-object v0, p1, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->h:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/do$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gd$r;-><init>(Lcom/tapjoy/internal/do$a;)V

    return-void
.end method

.method public static C()Lcom/tapjoy/internal/gd$r$a;
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/gd$r$a;->e()Lcom/tapjoy/internal/gd$r$a;

    move-result-object v0

    return-object v0
.end method

.method private D()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->j:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->j:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private E()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->k:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private F()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->l:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->l:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private G()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->m:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->m:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private H()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->n:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->n:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private I()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->o:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->o:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private J()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->p:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->p:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private K()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->q:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->q:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private L()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->r:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->r:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private M()Lcom/tapjoy/internal/dk;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->s:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->s:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private N()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->j:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$r;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/gd$r;->d:D

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->k:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->l:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->m:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->n:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->o:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/gd$r;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/gd$r;->f:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->p:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->q:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->r:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gd$r;->s:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$r;D)D
    .locals 1

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$r;->d:D

    return-wide p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$r;I)I
    .locals 0

    iput p1, p0, Lcom/tapjoy/internal/gd$r;->c:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$r;J)J
    .locals 1

    iput-wide p1, p0, Lcom/tapjoy/internal/gd$r;->f:J

    return-wide p1
.end method

.method public static a(Lcom/tapjoy/internal/gd$r;)Lcom/tapjoy/internal/gd$r$a;
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/gd$r$a;->e()Lcom/tapjoy/internal/gd$r$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gd$r$a;->a(Lcom/tapjoy/internal/gd$r;)Lcom/tapjoy/internal/gd$r$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$r;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gd$r;I)I
    .locals 0

    iput p1, p0, Lcom/tapjoy/internal/gd$r;->e:I

    return p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$r;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/tapjoy/internal/gd$r;I)I
    .locals 0

    iput p1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    return p1
.end method

.method static synthetic c(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$r;->l:Ljava/lang/Object;

    return-object p1
.end method

.method public static d()Lcom/tapjoy/internal/gd$r;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/gd$r;->g:Lcom/tapjoy/internal/gd$r;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$r;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$r;->n:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$r;->o:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$r;->p:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic h(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->p:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$r;->q:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic i(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->q:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$r;->r:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic j(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->r:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j(Lcom/tapjoy/internal/gd$r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$r;->s:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic k(Lcom/tapjoy/internal/gd$r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->s:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l(Lcom/tapjoy/internal/gd$r;)Lcom/tapjoy/internal/dk;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->h:Lcom/tapjoy/internal/dk;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final B()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->s:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->s:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/tapjoy/internal/dm;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->b()I

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->D()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->c:I

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dm;->a(II)V

    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$r;->d:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/tapjoy/internal/dm;->a(ID)V

    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->E()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_3
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->F()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_4
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->G()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_5
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->H()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_6
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->I()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_7
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    iget v1, p0, Lcom/tapjoy/internal/gd$r;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dm;->a(II)V

    :cond_8
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$r;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/tapjoy/internal/dm;->a(IJ)V

    :cond_9
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->J()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_a
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->K()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_b
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->L()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_c
    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->M()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    :cond_d
    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->h:Lcom/tapjoy/internal/dk;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->c(Lcom/tapjoy/internal/dk;)V

    return-void
.end method

.method public final b()I
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->D()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/tapjoy/internal/gd$r;->c:I

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dm;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tapjoy/internal/dm;->d(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->E()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->F()Lcom/tapjoy/internal/dk;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->G()Lcom/tapjoy/internal/dk;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->H()Lcom/tapjoy/internal/dk;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->I()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    iget v2, p0, Lcom/tapjoy/internal/gd$r;->e:I

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dm;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$r;->f:J

    invoke-static {v1, v2, v3}, Lcom/tapjoy/internal/dm;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->J()Lcom/tapjoy/internal/dk;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->K()Lcom/tapjoy/internal/dk;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->L()Lcom/tapjoy/internal/dk;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    const/16 v1, 0xe

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$r;->M()Lcom/tapjoy/internal/dk;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/tapjoy/internal/gd$r;->h:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$r;->u:I

    goto/16 :goto_0
.end method

.method public final c()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-byte v2, p0, Lcom/tapjoy/internal/gd$r;->t:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->e()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/tapjoy/internal/gd$r;->t:B

    move v0, v1

    goto :goto_0

    :cond_2
    iput-byte v0, p0, Lcom/tapjoy/internal/gd$r;->t:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/tapjoy/internal/gd$r;->i:I

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
    instance-of v0, p1, Lcom/tapjoy/internal/gd$r;

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gd$r;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->e()Z

    move-result v3

    if-ne v0, v3, :cond_11

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->g()Z

    move-result v3

    if-ne v0, v3, :cond_13

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->c:I

    iget v3, p1, Lcom/tapjoy/internal/gd$r;->c:I

    if-ne v0, v3, :cond_14

    move v0, v1

    :cond_4
    :goto_4
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->h()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->h()Z

    move-result v3

    if-ne v0, v3, :cond_15

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->h()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_16

    iget-wide v4, p0, Lcom/tapjoy/internal/gd$r;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, p1, Lcom/tapjoy/internal/gd$r;->d:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_16

    move v0, v1

    :cond_5
    :goto_6
    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->i()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->i()Z

    move-result v3

    if-ne v0, v3, :cond_17

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->i()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    :cond_6
    :goto_8
    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->k()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->k()Z

    move-result v3

    if-ne v0, v3, :cond_19

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->k()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :cond_7
    :goto_a
    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->m()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->m()Z

    move-result v3

    if-ne v0, v3, :cond_1b

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->m()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    :cond_8
    :goto_c
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->o()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->o()Z

    move-result v3

    if-ne v0, v3, :cond_1d

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->o()Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    :cond_9
    :goto_e
    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->q()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->q()Z

    move-result v3

    if-ne v0, v3, :cond_1f

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->q()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    :cond_a
    :goto_10
    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->s()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->s()Z

    move-result v3

    if-ne v0, v3, :cond_21

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->s()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->e:I

    iget v3, p1, Lcom/tapjoy/internal/gd$r;->e:I

    if-ne v0, v3, :cond_22

    move v0, v1

    :cond_b
    :goto_12
    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->t()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->t()Z

    move-result v3

    if-ne v0, v3, :cond_23

    move v0, v1

    :goto_13
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->t()Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v0, :cond_24

    iget-wide v4, p0, Lcom/tapjoy/internal/gd$r;->f:J

    iget-wide v6, p1, Lcom/tapjoy/internal/gd$r;->f:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_24

    move v0, v1

    :cond_c
    :goto_14
    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->u()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->u()Z

    move-result v3

    if-ne v0, v3, :cond_25

    move v0, v1

    :goto_15
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->u()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v1

    :cond_d
    :goto_16
    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->w()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->w()Z

    move-result v3

    if-ne v0, v3, :cond_27

    move v0, v1

    :goto_17
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->w()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    :cond_e
    :goto_18
    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->y()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->y()Z

    move-result v3

    if-ne v0, v3, :cond_29

    move v0, v1

    :goto_19
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->y()Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    :cond_f
    :goto_1a
    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->A()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->A()Z

    move-result v3

    if-ne v0, v3, :cond_2b

    move v0, v1

    :goto_1b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->A()Z

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$r;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_10
    move v1, v2

    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto/16 :goto_1

    :cond_12
    move v0, v2

    goto/16 :goto_2

    :cond_13
    move v0, v2

    goto/16 :goto_3

    :cond_14
    move v0, v2

    goto/16 :goto_4

    :cond_15
    move v0, v2

    goto/16 :goto_5

    :cond_16
    move v0, v2

    goto/16 :goto_6

    :cond_17
    move v0, v2

    goto/16 :goto_7

    :cond_18
    move v0, v2

    goto/16 :goto_8

    :cond_19
    move v0, v2

    goto/16 :goto_9

    :cond_1a
    move v0, v2

    goto/16 :goto_a

    :cond_1b
    move v0, v2

    goto/16 :goto_b

    :cond_1c
    move v0, v2

    goto/16 :goto_c

    :cond_1d
    move v0, v2

    goto/16 :goto_d

    :cond_1e
    move v0, v2

    goto/16 :goto_e

    :cond_1f
    move v0, v2

    goto/16 :goto_f

    :cond_20
    move v0, v2

    goto/16 :goto_10

    :cond_21
    move v0, v2

    goto/16 :goto_11

    :cond_22
    move v0, v2

    goto/16 :goto_12

    :cond_23
    move v0, v2

    goto/16 :goto_13

    :cond_24
    move v0, v2

    goto/16 :goto_14

    :cond_25
    move v0, v2

    goto/16 :goto_15

    :cond_26
    move v0, v2

    goto/16 :goto_16

    :cond_27
    move v0, v2

    goto/16 :goto_17

    :cond_28
    move v0, v2

    goto/16 :goto_18

    :cond_29
    move v0, v2

    goto/16 :goto_19

    :cond_2a
    move v0, v2

    goto :goto_1a

    :cond_2b
    move v0, v2

    goto :goto_1b

    :cond_2c
    move v1, v0

    goto/16 :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->j:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

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

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

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

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->a:I

    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/tapjoy/internal/gd$r;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    iget v1, p0, Lcom/tapjoy/internal/gd$r;->c:I

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$r;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tapjoy/internal/dp;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->m()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->q()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->s()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    iget v1, p0, Lcom/tapjoy/internal/gd$r;->e:I

    add-int/2addr v0, v1

    :cond_9
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->t()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    iget-wide v2, p0, Lcom/tapjoy/internal/gd$r;->f:J

    invoke-static {v2, v3}, Lcom/tapjoy/internal/dp;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->u()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->w()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->y()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->A()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$r;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gd$r;->h:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$r;->a:I

    goto/16 :goto_0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->k:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->k:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->l:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->l:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->m:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->m:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final o()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->n:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->n:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final q()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->o:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->o:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final s()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->p:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->p:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final w()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->q:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->q:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final y()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$r;->i:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$r;->r:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/tapjoy/internal/gd$r;->r:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
