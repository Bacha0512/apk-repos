.class public final Lcom/tapjoy/internal/gl$d;
.super Lcom/tapjoy/internal/do;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$d$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/dw;

.field private static final d:Lcom/tapjoy/internal/gl$d;


# instance fields
.field c:Ljava/util/List;

.field private final e:Lcom/tapjoy/internal/dk;

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17972
    new-instance v0, Lcom/tapjoy/internal/gl$d$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$d$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$d;->b:Lcom/tapjoy/internal/dw;

    .line 18393
    new-instance v0, Lcom/tapjoy/internal/gl$d;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$d;-><init>()V

    .line 18394
    sput-object v0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/gl$d;

    .line 27023
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    .line 18395
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 17905
    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    .line 18025
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$d;->f:B

    .line 18050
    iput v0, p0, Lcom/tapjoy/internal/gl$d;->g:I

    .line 17905
    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 17920
    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    .line 18025
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$d;->f:B

    .line 18050
    iput v1, p0, Lcom/tapjoy/internal/gl$d;->g:I

    .line 20023
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    .line 17923
    invoke-static {}, Lcom/tapjoy/internal/dk;->g()Lcom/tapjoy/internal/dk$b;

    move-result-object v3

    .line 20097
    const/16 v1, 0x1000

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dm;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dm;

    move-result-object v4

    move v1, v0

    .line 17930
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 17931
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->a()I

    move-result v5

    .line 17932
    sparse-switch v5, :sswitch_data_0

    .line 21073
    invoke-virtual {p1, v5, v4}, Lcom/tapjoy/internal/dl;->a(ILcom/tapjoy/internal/dm;)Z

    move-result v5

    .line 17937
    if-nez v5, :cond_0

    move v1, v2

    .line 17939
    goto :goto_0

    :sswitch_0
    move v1, v2

    .line 17935
    goto :goto_0

    .line 17944
    :sswitch_1
    and-int/lit8 v5, v0, 0x1

    if-eq v5, v2, :cond_1

    .line 17945
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    .line 17946
    or-int/lit8 v0, v0, 0x1

    .line 17948
    :cond_1
    iget-object v5, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    sget-object v6, Lcom/tapjoy/internal/gl$c;->b:Lcom/tapjoy/internal/dw;

    invoke-virtual {p1, v6, p2}, Lcom/tapjoy/internal/dl;->a(Lcom/tapjoy/internal/dw;Lcom/tapjoy/internal/dn;)Lcom/tapjoy/internal/du;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    .line 17954
    :catch_0
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    .line 22057
    :try_start_1
    iput-object p0, v0, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 17954
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17959
    :catchall_0
    move-exception v0

    :goto_1
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    .line 17960
    iget-object v1, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    .line 17963
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17967
    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d;->e:Lcom/tapjoy/internal/dk;

    .line 17969
    :goto_2
    throw v0

    .line 17959
    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_4

    .line 17960
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    .line 17963
    :cond_4
    :try_start_3
    invoke-virtual {v4}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17967
    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Lcom/tapjoy/internal/dk;

    .line 17968
    :goto_3
    return-void

    .line 17967
    :catch_1
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Lcom/tapjoy/internal/dk;

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d;->e:Lcom/tapjoy/internal/dk;

    throw v0

    .line 17955
    :catch_2
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    .line 17956
    :try_start_4
    new-instance v5, Lcom/tapjoy/internal/dq;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/tapjoy/internal/dq;-><init>(Ljava/lang/String;)V

    .line 23057
    iput-object p0, v5, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 17956
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 17967
    :catch_3
    move-exception v1

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d;->e:Lcom/tapjoy/internal/dk;

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$d;->e:Lcom/tapjoy/internal/dk;

    throw v0

    .line 17959
    :catchall_3
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_1

    .line 17932
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;B)V
    .locals 0

    .prologue
    .line 17896
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/gl$d;-><init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/do$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 17902
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/do;-><init>(B)V

    .line 18025
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$d;->f:B

    .line 18050
    iput v1, p0, Lcom/tapjoy/internal/gl$d;->g:I

    .line 19123
    iget-object v0, p1, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 17903
    iput-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Lcom/tapjoy/internal/dk;

    .line 17904
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/do$a;B)V
    .locals 0

    .prologue
    .line 17896
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$d;-><init>(Lcom/tapjoy/internal/do$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$d;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17896
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 17896
    iput-object p1, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$d;)Lcom/tapjoy/internal/dk;
    .locals 1

    .prologue
    .line 17896
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Lcom/tapjoy/internal/dk;

    return-object v0
.end method

.method public static d()Lcom/tapjoy/internal/gl$d;
    .locals 1

    .prologue
    .line 17909
    sget-object v0, Lcom/tapjoy/internal/gl$d;->d:Lcom/tapjoy/internal/gl$d;

    return-object v0
.end method

.method public static e()Lcom/tapjoy/internal/gl$d$a;
    .locals 1

    .prologue
    .line 18157
    invoke-static {}, Lcom/tapjoy/internal/gl$d$a;->g()Lcom/tapjoy/internal/gl$d$a;

    move-result-object v0

    return-object v0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 18006
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dm;)V
    .locals 3

    .prologue
    .line 18043
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$d;->b()I

    .line 18044
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 18045
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/du;

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/du;)V

    .line 18044
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 18047
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->c(Lcom/tapjoy/internal/dk;)V

    .line 18048
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 18052
    iget v1, p0, Lcom/tapjoy/internal/gl$d;->g:I

    .line 18053
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 18062
    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 18056
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 18057
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/du;

    invoke-static {v3, v0}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/du;)I

    move-result v0

    add-int/2addr v2, v0

    .line 18056
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 18060
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    add-int/2addr v0, v2

    .line 18061
    iput v0, p0, Lcom/tapjoy/internal/gl$d;->g:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18027
    iget-byte v0, p0, Lcom/tapjoy/internal/gl$d;->f:B

    .line 18028
    if-ne v0, v3, :cond_1

    move v2, v3

    .line 18038
    :cond_0
    :goto_0
    return v2

    .line 18029
    :cond_1
    if-eqz v0, :cond_0

    move v1, v2

    .line 18031
    :goto_1
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d;->f()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 24012
    iget-object v0, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$c;

    .line 18032
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18033
    iput-byte v2, p0, Lcom/tapjoy/internal/gl$d;->f:B

    goto :goto_0

    .line 18031
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 18037
    :cond_3
    iput-byte v3, p0, Lcom/tapjoy/internal/gl$d;->f:B

    move v2, v3

    .line 18038
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 18074
    if-ne p1, p0, :cond_1

    .line 18085
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 18077
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/tapjoy/internal/gl$d;

    if-nez v1, :cond_2

    .line 18078
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 18080
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$d;

    .line 24993
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    .line 25993
    iget-object v2, p1, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    .line 18083
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 18085
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 18090
    iget v0, p0, Lcom/tapjoy/internal/gl$d;->a:I

    if-eqz v0, :cond_0

    .line 18091
    iget v0, p0, Lcom/tapjoy/internal/gl$d;->a:I

    .line 18101
    :goto_0
    return v0

    .line 18094
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 18095
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$d;->f()I

    move-result v1

    if-lez v1, :cond_1

    .line 18096
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 18097
    mul-int/lit8 v0, v0, 0x35

    .line 26993
    iget-object v1, p0, Lcom/tapjoy/internal/gl$d;->c:Ljava/util/List;

    .line 18097
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18099
    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$d;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18100
    iput v0, p0, Lcom/tapjoy/internal/gl$d;->a:I

    goto :goto_0
.end method
