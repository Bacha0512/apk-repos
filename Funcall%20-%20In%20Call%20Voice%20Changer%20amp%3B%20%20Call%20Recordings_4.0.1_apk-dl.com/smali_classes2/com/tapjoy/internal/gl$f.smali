.class public final Lcom/tapjoy/internal/gl$f;
.super Lcom/tapjoy/internal/do;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$f$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/dw;

.field private static final d:Lcom/tapjoy/internal/gl$f;


# instance fields
.field c:Lcom/tapjoy/internal/gl$i;

.field private final e:Lcom/tapjoy/internal/dk;

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12923
    new-instance v0, Lcom/tapjoy/internal/gl$f$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$f$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$f;->b:Lcom/tapjoy/internal/dw;

    .line 13529
    new-instance v0, Lcom/tapjoy/internal/gl$f;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$f;-><init>()V

    .line 13530
    sput-object v0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/gl$f;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$f;->m()V

    .line 13531
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12843
    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    .line 13043
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$f;->i:B

    .line 13076
    iput v0, p0, Lcom/tapjoy/internal/gl$f;->j:I

    .line 12843
    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->e:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 12858
    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    .line 13043
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$f;->i:B

    .line 13076
    iput v0, p0, Lcom/tapjoy/internal/gl$f;->j:I

    .line 12859
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f;->m()V

    .line 12861
    invoke-static {}, Lcom/tapjoy/internal/dk;->g()Lcom/tapjoy/internal/dk$b;

    move-result-object v2

    .line 15097
    const/16 v0, 0x1000

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dm;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dm;

    move-result-object v3

    .line 12867
    const/4 v0, 0x0

    .line 12868
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 12869
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->a()I

    move-result v4

    .line 12870
    sparse-switch v4, :sswitch_data_0

    .line 16073
    invoke-virtual {p1, v4, v3}, Lcom/tapjoy/internal/dl;->a(ILcom/tapjoy/internal/dm;)Z

    move-result v4

    .line 12875
    if-nez v4, :cond_0

    move v0, v1

    .line 12877
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 12873
    goto :goto_0

    .line 16570
    :sswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->f()I

    move-result v5

    .line 12883
    invoke-static {v5}, Lcom/tapjoy/internal/gl$i;->a(I)Lcom/tapjoy/internal/gl$i;

    move-result-object v6

    .line 12884
    if-nez v6, :cond_1

    .line 12885
    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/dm;->e(I)V

    .line 12886
    invoke-virtual {v3, v5}, Lcom/tapjoy/internal/dm;->e(I)V
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 12908
    :catch_0
    move-exception v0

    .line 17057
    :try_start_1
    iput-object p0, v0, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 12908
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12913
    :catchall_0
    move-exception v0

    .line 12914
    :try_start_2
    invoke-virtual {v3}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12918
    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$f;->e:Lcom/tapjoy/internal/dk;

    .line 12920
    :goto_1
    throw v0

    .line 12888
    :cond_1
    :try_start_3
    iget v4, p0, Lcom/tapjoy/internal/gl$f;->f:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tapjoy/internal/gl$f;->f:I

    .line 12889
    iput-object v6, p0, Lcom/tapjoy/internal/gl$f;->c:Lcom/tapjoy/internal/gl$i;
    :try_end_3
    .catch Lcom/tapjoy/internal/dq; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 12909
    :catch_1
    move-exception v0

    .line 12910
    :try_start_4
    new-instance v1, Lcom/tapjoy/internal/dq;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/dq;-><init>(Ljava/lang/String;)V

    .line 18057
    iput-object p0, v1, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 12910
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12894
    :sswitch_2
    :try_start_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->e()Lcom/tapjoy/internal/dk;

    move-result-object v4

    .line 12895
    iget v5, p0, Lcom/tapjoy/internal/gl$f;->f:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/tapjoy/internal/gl$f;->f:I

    .line 12896
    iput-object v4, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    goto :goto_0

    .line 12900
    :sswitch_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->e()Lcom/tapjoy/internal/dk;

    move-result-object v4

    .line 12901
    iget v5, p0, Lcom/tapjoy/internal/gl$f;->f:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/tapjoy/internal/gl$f;->f:I

    .line 12902
    iput-object v4, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;
    :try_end_5
    .catch Lcom/tapjoy/internal/dq; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 12914
    :cond_2
    :try_start_6
    invoke-virtual {v3}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 12918
    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->e:Lcom/tapjoy/internal/dk;

    .line 12919
    :goto_2
    return-void

    .line 12918
    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->e:Lcom/tapjoy/internal/dk;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$f;->e:Lcom/tapjoy/internal/dk;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$f;->e:Lcom/tapjoy/internal/dk;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$f;->e:Lcom/tapjoy/internal/dk;

    throw v0

    .line 12870
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

    .prologue
    .line 12834
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$f;-><init>(Lcom/tapjoy/internal/dl;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/do$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 12840
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/do;-><init>(B)V

    .line 13043
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$f;->i:B

    .line 13076
    iput v1, p0, Lcom/tapjoy/internal/gl$f;->j:I

    .line 14123
    iget-object v0, p1, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 12841
    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->e:Lcom/tapjoy/internal/dk;

    .line 12842
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/do$a;B)V
    .locals 0

    .prologue
    .line 12834
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$f;-><init>(Lcom/tapjoy/internal/do$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$f;I)I
    .locals 0

    .prologue
    .line 12834
    iput p1, p0, Lcom/tapjoy/internal/gl$f;->f:I

    return p1
.end method

.method public static a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;
    .locals 1

    .prologue
    .line 23213
    invoke-static {}, Lcom/tapjoy/internal/gl$f$a;->e()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    .line 13216
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gl$f$a;->a(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$f;Lcom/tapjoy/internal/gl$i;)Lcom/tapjoy/internal/gl$i;
    .locals 0

    .prologue
    .line 12834
    iput-object p1, p0, Lcom/tapjoy/internal/gl$f;->c:Lcom/tapjoy/internal/gl$i;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 12834
    iput-object p1, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$f;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12834
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 12834
    iput-object p1, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/tapjoy/internal/gl$f;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12834
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/gl$f;)Lcom/tapjoy/internal/dk;
    .locals 1

    .prologue
    .line 12834
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->e:Lcom/tapjoy/internal/dk;

    return-object v0
.end method

.method public static d()Lcom/tapjoy/internal/gl$f;
    .locals 1

    .prologue
    .line 12847
    sget-object v0, Lcom/tapjoy/internal/gl$f;->d:Lcom/tapjoy/internal/gl$f;

    return-object v0
.end method

.method public static j()Lcom/tapjoy/internal/gl$f$a;
    .locals 1

    .prologue
    .line 13213
    invoke-static {}, Lcom/tapjoy/internal/gl$f$a;->e()Lcom/tapjoy/internal/gl$f$a;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/tapjoy/internal/dk;
    .locals 2

    .prologue
    .line 12984
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    .line 12985
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12986
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    .line 12989
    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    .line 12992
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private l()Lcom/tapjoy/internal/dk;
    .locals 2

    .prologue
    .line 13026
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    .line 13027
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13028
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    .line 13031
    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    .line 13034
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 13039
    sget-object v0, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->c:Lcom/tapjoy/internal/gl$i;

    .line 13040
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    .line 13041
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    .line 13042
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dm;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 13063
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->b()I

    .line 13064
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->f:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 13065
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->c:Lcom/tapjoy/internal/gl$i;

    .line 19052
    iget v0, v0, Lcom/tapjoy/internal/gl$i;->e:I

    .line 13065
    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->a(I)V

    .line 13067
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 13068
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f;->k()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    .line 13070
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->f:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 13071
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f;->l()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    .line 13073
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->c(Lcom/tapjoy/internal/dk;)V

    .line 13074
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 13078
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->j:I

    .line 13079
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 13096
    :goto_0
    return v0

    .line 13081
    :cond_0
    const/4 v0, 0x0

    .line 13082
    iget v1, p0, Lcom/tapjoy/internal/gl$f;->f:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 13083
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->c:Lcom/tapjoy/internal/gl$i;

    .line 20052
    iget v0, v0, Lcom/tapjoy/internal/gl$i;->e:I

    .line 13083
    invoke-static {v0}, Lcom/tapjoy/internal/dm;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 13086
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gl$f;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 13087
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f;->k()Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13090
    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gl$f;->f:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 13091
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/tapjoy/internal/gl$f;->l()Lcom/tapjoy/internal/dk;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13094
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gl$f;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 13095
    iput v0, p0, Lcom/tapjoy/internal/gl$f;->j:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13045
    iget-byte v2, p0, Lcom/tapjoy/internal/gl$f;->i:B

    .line 13046
    if-ne v2, v0, :cond_0

    .line 13058
    :goto_0
    return v0

    .line 13047
    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 13049
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 13050
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$f;->i:B

    move v0, v1

    .line 13051
    goto :goto_0

    .line 13053
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->f()Z

    move-result v2

    if-nez v2, :cond_3

    .line 13054
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$f;->i:B

    move v0, v1

    .line 13055
    goto :goto_0

    .line 13057
    :cond_3
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$f;->i:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12945
    iget v1, p0, Lcom/tapjoy/internal/gl$f;->f:I

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
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 13108
    if-ne p1, p0, :cond_1

    .line 13132
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 13111
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gl$f;

    if-nez v0, :cond_2

    .line 13112
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 13114
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$f;

    .line 13117
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->e()Z

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    .line 13118
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13119
    if-eqz v0, :cond_7

    .line 20951
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->c:Lcom/tapjoy/internal/gl$i;

    .line 21951
    iget-object v3, p1, Lcom/tapjoy/internal/gl$f;->c:Lcom/tapjoy/internal/gl$i;

    .line 13119
    if-ne v0, v3, :cond_7

    move v0, v1

    .line 13122
    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->f()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 13123
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13124
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 13127
    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->h()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->h()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    .line 13128
    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->h()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 13129
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    .line 13117
    goto :goto_1

    :cond_7
    move v0, v2

    .line 13119
    goto :goto_2

    :cond_8
    move v0, v2

    .line 13122
    goto :goto_3

    :cond_9
    move v0, v2

    .line 13124
    goto :goto_4

    :cond_a
    move v0, v2

    .line 13127
    goto :goto_5

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 12960
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->f:I

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

    .prologue
    .line 12966
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    .line 12967
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12968
    check-cast v0, Ljava/lang/String;

    .line 12976
    :goto_0
    return-object v0

    .line 12970
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    .line 12972
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v1

    .line 12973
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12974
    iput-object v1, p0, Lcom/tapjoy/internal/gl$f;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 12976
    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 13002
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->f:I

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

    .prologue
    .line 13137
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->a:I

    if-eqz v0, :cond_0

    .line 13138
    iget v0, p0, Lcom/tapjoy/internal/gl$f;->a:I

    .line 13157
    :goto_0
    return v0

    .line 13141
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 13142
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13143
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 13144
    mul-int/lit8 v0, v0, 0x35

    .line 22951
    iget-object v1, p0, Lcom/tapjoy/internal/gl$f;->c:Lcom/tapjoy/internal/gl$i;

    .line 13144
    invoke-static {v1}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/dp$a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13147
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13148
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 13149
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13151
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13152
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 13153
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13155
    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$f;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13156
    iput v0, p0, Lcom/tapjoy/internal/gl$f;->a:I

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13008
    iget-object v0, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    .line 13009
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13010
    check-cast v0, Ljava/lang/String;

    .line 13018
    :goto_0
    return-object v0

    .line 13012
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    .line 13014
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v1

    .line 13015
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13016
    iput-object v1, p0, Lcom/tapjoy/internal/gl$f;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 13018
    goto :goto_0
.end method
