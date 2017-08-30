.class public final Lcom/tapjoy/internal/gl$x;
.super Lcom/tapjoy/internal/do;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$x$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/dw;

.field private static final d:Lcom/tapjoy/internal/gl$x;


# instance fields
.field public c:Lcom/tapjoy/internal/ds;

.field private final e:Lcom/tapjoy/internal/dk;

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8836
    new-instance v0, Lcom/tapjoy/internal/gl$x$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$x$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$x;->b:Lcom/tapjoy/internal/dw;

    .line 9212
    new-instance v0, Lcom/tapjoy/internal/gl$x;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$x;-><init>()V

    .line 9213
    sput-object v0, Lcom/tapjoy/internal/gl$x;->d:Lcom/tapjoy/internal/gl$x;

    .line 17881
    sget-object v1, Lcom/tapjoy/internal/dr;->a:Lcom/tapjoy/internal/ds;

    iput-object v1, v0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    .line 9214
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 8768
    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    .line 8883
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$x;->f:B

    .line 8902
    iput v0, p0, Lcom/tapjoy/internal/gl$x;->g:I

    .line 8768
    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x;->e:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 8783
    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    .line 8883
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$x;->f:B

    .line 8902
    iput v1, p0, Lcom/tapjoy/internal/gl$x;->g:I

    .line 10881
    sget-object v1, Lcom/tapjoy/internal/dr;->a:Lcom/tapjoy/internal/ds;

    iput-object v1, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    .line 8786
    invoke-static {}, Lcom/tapjoy/internal/dk;->g()Lcom/tapjoy/internal/dk$b;

    move-result-object v3

    .line 11097
    const/16 v1, 0x1000

    invoke-static {v3, v1}, Lcom/tapjoy/internal/dm;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dm;

    move-result-object v4

    move v1, v0

    .line 8793
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 8794
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->a()I

    move-result v5

    .line 8795
    sparse-switch v5, :sswitch_data_0

    .line 12073
    invoke-virtual {p1, v5, v4}, Lcom/tapjoy/internal/dl;->a(ILcom/tapjoy/internal/dm;)Z

    move-result v5

    .line 8800
    if-nez v5, :cond_0

    move v1, v2

    .line 8802
    goto :goto_0

    :sswitch_0
    move v1, v2

    .line 8798
    goto :goto_0

    .line 8807
    :sswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->e()Lcom/tapjoy/internal/dk;

    move-result-object v5

    .line 8808
    and-int/lit8 v6, v0, 0x1

    if-eq v6, v2, :cond_1

    .line 8809
    new-instance v6, Lcom/tapjoy/internal/dr;

    invoke-direct {v6}, Lcom/tapjoy/internal/dr;-><init>()V

    iput-object v6, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    .line 8810
    or-int/lit8 v0, v0, 0x1

    .line 8812
    :cond_1
    iget-object v6, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    invoke-interface {v6, v5}, Lcom/tapjoy/internal/ds;->a(Lcom/tapjoy/internal/dk;)V
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    .line 8818
    :catch_0
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    .line 13057
    :try_start_1
    iput-object p0, v0, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 8818
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8823
    :catchall_0
    move-exception v0

    :goto_1
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    .line 8824
    iget-object v1, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    invoke-interface {v1}, Lcom/tapjoy/internal/ds;->b()Lcom/tapjoy/internal/ds;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    .line 8827
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8831
    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$x;->e:Lcom/tapjoy/internal/dk;

    .line 8833
    :goto_2
    throw v0

    .line 8823
    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_4

    .line 8824
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    invoke-interface {v0}, Lcom/tapjoy/internal/ds;->b()Lcom/tapjoy/internal/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    .line 8827
    :cond_4
    :try_start_3
    invoke-virtual {v4}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8831
    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x;->e:Lcom/tapjoy/internal/dk;

    .line 8832
    :goto_3
    return-void

    .line 8831
    :catch_1
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$x;->e:Lcom/tapjoy/internal/dk;

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$x;->e:Lcom/tapjoy/internal/dk;

    throw v0

    .line 8819
    :catch_2
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    .line 8820
    :try_start_4
    new-instance v5, Lcom/tapjoy/internal/dq;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/tapjoy/internal/dq;-><init>(Ljava/lang/String;)V

    .line 14057
    iput-object p0, v5, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 8820
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8831
    :catch_3
    move-exception v1

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$x;->e:Lcom/tapjoy/internal/dk;

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$x;->e:Lcom/tapjoy/internal/dk;

    throw v0

    .line 8823
    :catchall_3
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_1

    .line 8795
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dl;B)V
    .locals 0

    .prologue
    .line 8759
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$x;-><init>(Lcom/tapjoy/internal/dl;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/do$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 8765
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/do;-><init>(B)V

    .line 8883
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$x;->f:B

    .line 8902
    iput v1, p0, Lcom/tapjoy/internal/gl$x;->g:I

    .line 10123
    iget-object v0, p1, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 8766
    iput-object v0, p0, Lcom/tapjoy/internal/gl$x;->e:Lcom/tapjoy/internal/dk;

    .line 8767
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/do$a;B)V
    .locals 0

    .prologue
    .line 8759
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$x;-><init>(Lcom/tapjoy/internal/do$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/ds;
    .locals 1

    .prologue
    .line 8759
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$x;Lcom/tapjoy/internal/ds;)Lcom/tapjoy/internal/ds;
    .locals 0

    .prologue
    .line 8759
    iput-object p1, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    return-object p1
.end method

.method public static a([B)Lcom/tapjoy/internal/gl$x;
    .locals 1

    .prologue
    .line 8974
    sget-object v0, Lcom/tapjoy/internal/gl$x;->b:Lcom/tapjoy/internal/dw;

    invoke-interface {v0, p0}, Lcom/tapjoy/internal/dw;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$x;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$x;)Lcom/tapjoy/internal/dk;
    .locals 1

    .prologue
    .line 8759
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x;->e:Lcom/tapjoy/internal/dk;

    return-object v0
.end method

.method public static d()Lcom/tapjoy/internal/gl$x;
    .locals 1

    .prologue
    .line 8772
    sget-object v0, Lcom/tapjoy/internal/gl$x;->d:Lcom/tapjoy/internal/gl$x;

    return-object v0
.end method

.method public static e()Lcom/tapjoy/internal/gl$x$a;
    .locals 1

    .prologue
    .line 9014
    invoke-static {}, Lcom/tapjoy/internal/gl$x$a;->f()Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dm;)V
    .locals 3

    .prologue
    .line 8895
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$x;->b()I

    .line 8896
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    invoke-interface {v1}, Lcom/tapjoy/internal/ds;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 8897
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    invoke-interface {v2, v0}, Lcom/tapjoy/internal/ds;->a(I)Lcom/tapjoy/internal/dk;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    .line 8896
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8899
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gl$x;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->c(Lcom/tapjoy/internal/dk;)V

    .line 8900
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8904
    iget v1, p0, Lcom/tapjoy/internal/gl$x;->g:I

    .line 8905
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 8919
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 8910
    :goto_1
    iget-object v2, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    invoke-interface {v2}, Lcom/tapjoy/internal/ds;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 8911
    iget-object v2, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    invoke-interface {v2, v0}, Lcom/tapjoy/internal/ds;->a(I)Lcom/tapjoy/internal/dk;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/dm;->b(Lcom/tapjoy/internal/dk;)I

    move-result v2

    add-int/2addr v1, v2

    .line 8910
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8914
    :cond_1
    add-int/lit8 v0, v1, 0x0

    .line 14858
    iget-object v1, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    .line 8915
    invoke-interface {v1}, Lcom/tapjoy/internal/dx;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 8917
    iget-object v1, p0, Lcom/tapjoy/internal/gl$x;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 8918
    iput v0, p0, Lcom/tapjoy/internal/gl$x;->g:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8885
    iget-byte v1, p0, Lcom/tapjoy/internal/gl$x;->f:B

    .line 8886
    if-ne v1, v0, :cond_0

    .line 8890
    :goto_0
    return v0

    .line 8887
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 8889
    :cond_1
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$x;->f:B

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 8931
    if-ne p1, p0, :cond_1

    .line 8942
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 8934
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/tapjoy/internal/gl$x;

    if-nez v1, :cond_2

    .line 8935
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 8937
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$x;

    .line 15858
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    .line 16858
    iget-object v2, p1, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    .line 8940
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 8942
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 8947
    iget v0, p0, Lcom/tapjoy/internal/gl$x;->a:I

    if-eqz v0, :cond_0

    .line 8948
    iget v0, p0, Lcom/tapjoy/internal/gl$x;->a:I

    .line 8958
    :goto_0
    return v0

    .line 8951
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$x;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 16864
    iget-object v1, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    invoke-interface {v1}, Lcom/tapjoy/internal/ds;->size()I

    move-result v1

    .line 8952
    if-lez v1, :cond_1

    .line 8953
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 8954
    mul-int/lit8 v0, v0, 0x35

    .line 17858
    iget-object v1, p0, Lcom/tapjoy/internal/gl$x;->c:Lcom/tapjoy/internal/ds;

    .line 8954
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8956
    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$x;->e:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8957
    iput v0, p0, Lcom/tapjoy/internal/gl$x;->a:I

    goto :goto_0
.end method
