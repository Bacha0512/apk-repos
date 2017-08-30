.class public final Lcom/tapjoy/internal/gd$d;
.super Lcom/tapjoy/internal/do;

# interfaces
.implements Lcom/tapjoy/internal/gd$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gd$d$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/dw;

.field private static final d:Lcom/tapjoy/internal/gd$d;


# instance fields
.field c:Ljava/util/List;

.field private final e:Lcom/tapjoy/internal/dk;

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/gd$d$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$d$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gd$d;->b:Lcom/tapjoy/internal/dw;

    new-instance v0, Lcom/tapjoy/internal/gd$d;

    invoke-direct {v0}, Lcom/tapjoy/internal/gd$d;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gd$d;->d:Lcom/tapjoy/internal/gd$d;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    iput-byte v0, p0, Lcom/tapjoy/internal/gd$d;->f:B

    iput v0, p0, Lcom/tapjoy/internal/gd$d;->g:I

    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$d;->e:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    iput-byte v1, p0, Lcom/tapjoy/internal/gd$d;->f:B

    iput v1, p0, Lcom/tapjoy/internal/gd$d;->g:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    invoke-static {}, Lcom/tapjoy/internal/dk;->g()Lcom/tapjoy/internal/dk$b;

    move-result-object v3

    const/16 v1, 0x1000

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dm;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dm;

    move-result-object v4

    move v1, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->a()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-virtual {p1, v5, v4}, Lcom/tapjoy/internal/dl;->a(ILcom/tapjoy/internal/dm;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_0
    move v1, v2

    goto :goto_0

    :sswitch_1
    and-int/lit8 v5, v0, 0x1

    if-eq v5, v2, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    or-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v5, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    sget-object v6, Lcom/tapjoy/internal/gd$c;->b:Lcom/tapjoy/internal/dw;

    invoke-virtual {p1, v6, p2}, Lcom/tapjoy/internal/dl;->a(Lcom/tapjoy/internal/dw;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :try_start_1
    iput-object p0, v0, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$d;->e:Lcom/tapjoy/internal/dk;

    :goto_2
    throw v0

    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    :cond_4
    :try_start_3
    invoke-virtual {v4}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$d;->e:Lcom/tapjoy/internal/dk;

    :goto_3
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gd$d;->e:Lcom/tapjoy/internal/dk;

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$d;->e:Lcom/tapjoy/internal/dk;

    throw v0

    :catch_2
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :try_start_4
    new-instance v5, Lcom/tapjoy/internal/dq;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/tapjoy/internal/dq;-><init>(Ljava/lang/String;)V

    iput-object p0, v5, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_3
    move-exception v1

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$d;->e:Lcom/tapjoy/internal/dk;

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gd$d;->e:Lcom/tapjoy/internal/dk;

    throw v0

    :catchall_3
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/gd$d;-><init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/do$a;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/do;-><init>(B)V

    iput-byte v1, p0, Lcom/tapjoy/internal/gd$d;->f:B

    iput v1, p0, Lcom/tapjoy/internal/gd$d;->g:I

    iget-object v0, p1, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gd$d;->e:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/do$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gd$d;-><init>(Lcom/tapjoy/internal/do$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gd$d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gd$d;)Lcom/tapjoy/internal/dk;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$d;->e:Lcom/tapjoy/internal/dk;

    return-object v0
.end method

.method public static d()Lcom/tapjoy/internal/gd$d;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/gd$d;->d:Lcom/tapjoy/internal/gd$d;

    return-object v0
.end method

.method public static e()Lcom/tapjoy/internal/gd$d$a;
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/gd$d$a;->g()Lcom/tapjoy/internal/gd$d$a;

    move-result-object v0

    return-object v0
.end method

.method private f()I
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dm;)V
    .locals 3

    invoke-virtual {p0}, Lcom/tapjoy/internal/gd$d;->b()I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/du;

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/du;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gd$d;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->c(Lcom/tapjoy/internal/dk;)V

    return-void
.end method

.method public final b()I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/tapjoy/internal/gd$d;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/du;

    invoke-static {v3, v0}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/du;)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/gd$d;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tapjoy/internal/gd$d;->g:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-byte v0, p0, Lcom/tapjoy/internal/gd$d;->f:B

    if-ne v0, v3, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    invoke-direct {p0}, Lcom/tapjoy/internal/gd$d;->f()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gd$c;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/tapjoy/internal/gd$d;->f:B

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iput-byte v3, p0, Lcom/tapjoy/internal/gd$d;->f:B

    move v2, v3

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/tapjoy/internal/gd$d;

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gd$d;

    iget-object v1, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/gd$d;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/gd$d;->a:I

    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/tapjoy/internal/gd$d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-direct {p0}, Lcom/tapjoy/internal/gd$d;->f()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/tapjoy/internal/gd$d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gd$d;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/gd$d;->a:I

    goto :goto_0
.end method
