.class public final Lcom/tapjoy/internal/gd$n;
.super Lcom/tapjoy/internal/do;

# interfaces
.implements Lcom/tapjoy/internal/gd$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gd$n$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/dw;

.field private static final f:Lcom/tapjoy/internal/gd$n;


# instance fields
.field public c:Lcom/tapjoy/internal/gd$l;

.field public d:Lcom/tapjoy/internal/gd$a;

.field public e:Lcom/tapjoy/internal/gd$z;

.field private final g:Lcom/tapjoy/internal/dk;

.field private h:I

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gd$n$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$n$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gd$n;->b:Lcom/tapjoy/internal/dw;

    new-instance v0, Lcom/tapjoy/internal/gd$n;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$n;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gd$n;->f:Lcom/tapjoy/internal/gd$n;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$n;->i()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    iput-byte v0, p0, Lcom/tapjoy/internal/gd$n;->i:B

    iput v0, p0, Lcom/tapjoy/internal/gd$n;->j:I

    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->g:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)V
    .locals 7

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    iput-byte v0, p0, Lcom/tapjoy/internal/gd$n;->i:B

    iput v0, p0, Lcom/tapjoy/internal/gd$n;->j:I

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$n;->i()V

    invoke-static {}, Lcom/tapjoy/internal/dk;->g()Lcom/tapjoy/internal/dk$b;

    move-result-object v5

    const/16 v0, 0x1000

    invoke-static {v5, v0}, Lcom/tapjoy/internal/dm;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dm;

    move-result-object v6

    const/4 v0, 0x0

    move v3, v0

    :cond_0
    :goto_0
    if-nez v3, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0, v6}, Lcom/tapjoy/internal/dl;->a(ILcom/tapjoy/internal/dm;)Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_0
    move v3, v4

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/tapjoy/internal/gd$n;->h:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    invoke-static {}, Lcom/tapjoy/internal/gd$l$a;->e()Lcom/tapjoy/internal/gd$l$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$l$a;->a(Lcom/tapjoy/internal/gd$l;)Lcom/tapjoy/internal/gd$l$a;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/tapjoy/internal/gd$l;->b:Lcom/tapjoy/internal/dw;

    invoke-virtual {p1, v0, p2}, Lcom/tapjoy/internal/dl;->a(Lcom/tapjoy/internal/dw;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gd$l;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$l$a;->a(Lcom/tapjoy/internal/gd$l;)Lcom/tapjoy/internal/gd$l$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$l$a;->d()Lcom/tapjoy/internal/gd$l;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gd$n;->h:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gd$n;->h:I
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
    invoke-virtual {v6}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v5}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$n;->g:Lcom/tapjoy/internal/dk;

    :goto_2
    throw v0

    :sswitch_2
    :try_start_3
    iget v0, p0, Lcom/tapjoy/internal/gd$n;->h:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$a;->o()Lcom/tapjoy/internal/gd$a$a;

    move-result-object v0

    move-object v1, v0

    :goto_3
    sget-object v0, Lcom/tapjoy/internal/gd$a;->b:Lcom/tapjoy/internal/dw;

    invoke-virtual {p1, v0, p2}, Lcom/tapjoy/internal/dl;->a(Lcom/tapjoy/internal/dw;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gd$a;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$a$a;->a(Lcom/tapjoy/internal/gd$a;)Lcom/tapjoy/internal/gd$a$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$a$a;->d()Lcom/tapjoy/internal/gd$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    :cond_2
    iget v0, p0, Lcom/tapjoy/internal/gd$n;->h:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gd$n;->h:I
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
    iget v0, p0, Lcom/tapjoy/internal/gd$n;->h:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    invoke-static {v0}, Lcom/tapjoy/internal/gd$z;->a(Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/gd$z$a;

    move-result-object v0

    move-object v1, v0

    :goto_4
    sget-object v0, Lcom/tapjoy/internal/gd$z;->b:Lcom/tapjoy/internal/dw;

    invoke-virtual {p1, v0, p2}, Lcom/tapjoy/internal/dl;->a(Lcom/tapjoy/internal/dw;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gd$z;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gd$z$a;->a(Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z$a;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    :cond_3
    iget v0, p0, Lcom/tapjoy/internal/gd$n;->h:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gd$n;->h:I
    :try_end_5
    .catch Lcom/tapjoy/internal/dq; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_4
    :try_start_6
    invoke-virtual {v6}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v5}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->g:Lcom/tapjoy/internal/dk;

    :goto_5
    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v5}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->g:Lcom/tapjoy/internal/dk;

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v5}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$n;->g:Lcom/tapjoy/internal/dk;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$n;->g:Lcom/tapjoy/internal/dk;

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v5}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$n;->g:Lcom/tapjoy/internal/dk;

    throw v0

    :cond_5
    move-object v1, v2

    goto :goto_4

    :cond_6
    move-object v1, v2

    goto/16 :goto_3

    :cond_7
    move-object v1, v2

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/gd$n;-><init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/do$a;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/do;-><init>(B)V

    iput-byte v1, p0, Lcom/tapjoy/internal/gd$n;->i:B

    iput v1, p0, Lcom/tapjoy/internal/gd$n;->j:I

    iget-object v0, p1, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->g:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/do$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gd$n;-><init>(Lcom/tapjoy/internal/do$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$n;I)I
    .locals 0

    iput p1, p0, Lcom/tapjoy/internal/gd$n;->h:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$n;)Lcom/tapjoy/internal/dk;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->g:Lcom/tapjoy/internal/dk;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$n;Lcom/tapjoy/internal/gd$a;)Lcom/tapjoy/internal/gd$a;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$n;Lcom/tapjoy/internal/gd$l;)Lcom/tapjoy/internal/gd$l;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$n;Lcom/tapjoy/internal/gd$z;)Lcom/tapjoy/internal/gd$z;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    return-object p1
.end method

.method public static d()Lcom/tapjoy/internal/gd$n;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/gd$n;->f:Lcom/tapjoy/internal/gd$n;

    return-object v0
.end method

.method public static h()Lcom/tapjoy/internal/gd$n$a;
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/gd$n$a;->e()Lcom/tapjoy/internal/gd$n$a;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/gd$l;->d()Lcom/tapjoy/internal/gd$l;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    invoke-static {}, Lcom/tapjoy/internal/gd$a;->d()Lcom/tapjoy/internal/gd$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    invoke-static {}, Lcom/tapjoy/internal/gd$z;->d()Lcom/tapjoy/internal/gd$z;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dm;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$n;->b()I

    iget v0, p0, Lcom/tapjoy/internal/gd$n;->h:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/du;)V

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gd$n;->h:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/du;)V

    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gd$n;->h:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/du;)V

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->g:Lcom/tapjoy/internal/dk;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->c(Lcom/tapjoy/internal/dk;)V

    return-void
.end method

.method public final b()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/tapjoy/internal/gd$n;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/tapjoy/internal/gd$n;->h:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/du;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gd$n;->h:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/du;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gd$n;->h:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/du;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gd$n;->g:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$n;->j:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-byte v2, p0, Lcom/tapjoy/internal/gd$n;->i:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$n;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gd$z;->c()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/tapjoy/internal/gd$n;->i:B

    move v0, v1

    goto :goto_0

    :cond_2
    iput-byte v0, p0, Lcom/tapjoy/internal/gd$n;->i:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/tapjoy/internal/gd$n;->h:I

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
    instance-of v0, p1, Lcom/tapjoy/internal/gd$n;

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gd$n;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$n;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$n;->e()Z

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$n;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    iget-object v3, p1, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gd$l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$n;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$n;->f()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$n;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    iget-object v3, p1, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gd$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$n;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gd$n;->g()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$n;->g()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    iget-object v3, p1, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gd$z;->equals(Ljava/lang/Object;)Z

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

    iget v0, p0, Lcom/tapjoy/internal/gd$n;->h:I

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

.method public final g()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$n;->h:I

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

    iget v0, p0, Lcom/tapjoy/internal/gd$n;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/gd$n;->a:I

    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/tapjoy/internal/gd$n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$n;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$l;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$n;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$n;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gd$z;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gd$n;->g:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$n;->a:I

    goto :goto_0
.end method
