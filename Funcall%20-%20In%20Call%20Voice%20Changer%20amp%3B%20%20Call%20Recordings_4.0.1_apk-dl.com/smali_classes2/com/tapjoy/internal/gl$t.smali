.class public final Lcom/tapjoy/internal/gl$t;
.super Lcom/tapjoy/internal/do;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$t$a;
    }
.end annotation


# static fields
.field public static b:Lcom/tapjoy/internal/dw;

.field private static final e:Lcom/tapjoy/internal/gl$t;


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

    .prologue
    .line 4141
    new-instance v0, Lcom/tapjoy/internal/gl$t$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$t$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$t;->b:Lcom/tapjoy/internal/dw;

    .line 4672
    new-instance v0, Lcom/tapjoy/internal/gl$t;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$t;-><init>()V

    .line 4673
    sput-object v0, Lcom/tapjoy/internal/gl$t;->e:Lcom/tapjoy/internal/gl$t;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$t;->k()V

    .line 4674
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4069
    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    .line 4234
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$t;->i:B

    .line 4267
    iput v0, p0, Lcom/tapjoy/internal/gl$t;->j:I

    .line 4069
    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t;->f:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/dl;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 4084
    invoke-direct {p0}, Lcom/tapjoy/internal/do;-><init>()V

    .line 4234
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$t;->i:B

    .line 4267
    iput v0, p0, Lcom/tapjoy/internal/gl$t;->j:I

    .line 4085
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t;->k()V

    .line 4087
    invoke-static {}, Lcom/tapjoy/internal/dk;->g()Lcom/tapjoy/internal/dk$b;

    move-result-object v2

    .line 6097
    const/16 v0, 0x1000

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dm;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dm;

    move-result-object v3

    .line 4093
    const/4 v0, 0x0

    .line 4094
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4095
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->a()I

    move-result v4

    .line 4096
    sparse-switch v4, :sswitch_data_0

    .line 7073
    invoke-virtual {p1, v4, v3}, Lcom/tapjoy/internal/dl;->a(ILcom/tapjoy/internal/dm;)Z

    move-result v4

    .line 4101
    if-nez v4, :cond_0

    move v0, v1

    .line 4103
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 4099
    goto :goto_0

    .line 4108
    :sswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->e()Lcom/tapjoy/internal/dk;

    move-result-object v4

    .line 4109
    iget v5, p0, Lcom/tapjoy/internal/gl$t;->g:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/tapjoy/internal/gl$t;->g:I

    .line 4110
    iput-object v4, p0, Lcom/tapjoy/internal/gl$t;->h:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/tapjoy/internal/dq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4126
    :catch_0
    move-exception v0

    .line 9057
    :try_start_1
    iput-object p0, v0, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 4126
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4131
    :catchall_0
    move-exception v0

    .line 4132
    :try_start_2
    invoke-virtual {v3}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4136
    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$t;->f:Lcom/tapjoy/internal/dk;

    .line 4138
    :goto_1
    throw v0

    .line 4114
    :sswitch_2
    :try_start_3
    iget v4, p0, Lcom/tapjoy/internal/gl$t;->g:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/tapjoy/internal/gl$t;->g:I

    .line 7343
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->g()J

    move-result-wide v4

    .line 4115
    iput-wide v4, p0, Lcom/tapjoy/internal/gl$t;->c:J
    :try_end_3
    .catch Lcom/tapjoy/internal/dq; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4127
    :catch_1
    move-exception v0

    .line 4128
    :try_start_4
    new-instance v1, Lcom/tapjoy/internal/dq;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/dq;-><init>(Ljava/lang/String;)V

    .line 10057
    iput-object p0, v1, Lcom/tapjoy/internal/dq;->a:Lcom/tapjoy/internal/du;

    .line 4128
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4119
    :sswitch_3
    :try_start_5
    iget v4, p0, Lcom/tapjoy/internal/gl$t;->g:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/tapjoy/internal/gl$t;->g:I

    .line 8343
    invoke-virtual {p1}, Lcom/tapjoy/internal/dl;->g()J

    move-result-wide v4

    .line 4120
    iput-wide v4, p0, Lcom/tapjoy/internal/gl$t;->d:J
    :try_end_5
    .catch Lcom/tapjoy/internal/dq; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 4132
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Lcom/tapjoy/internal/dm;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4136
    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t;->f:Lcom/tapjoy/internal/dk;

    .line 4137
    :goto_2
    return-void

    .line 4136
    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t;->f:Lcom/tapjoy/internal/dk;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$t;->f:Lcom/tapjoy/internal/dk;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$t;->f:Lcom/tapjoy/internal/dk;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/dk$b;->a()Lcom/tapjoy/internal/dk;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gl$t;->f:Lcom/tapjoy/internal/dk;

    throw v0

    .line 4096
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

    .prologue
    .line 4060
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$t;-><init>(Lcom/tapjoy/internal/dl;)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/do$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 4066
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/do;-><init>(B)V

    .line 4234
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$t;->i:B

    .line 4267
    iput v1, p0, Lcom/tapjoy/internal/gl$t;->j:I

    .line 5123
    iget-object v0, p1, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 4067
    iput-object v0, p0, Lcom/tapjoy/internal/gl$t;->f:Lcom/tapjoy/internal/dk;

    .line 4068
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/do$a;B)V
    .locals 0

    .prologue
    .line 4060
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/gl$t;-><init>(Lcom/tapjoy/internal/do$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$t;I)I
    .locals 0

    .prologue
    .line 4060
    iput p1, p0, Lcom/tapjoy/internal/gl$t;->g:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$t;J)J
    .locals 1

    .prologue
    .line 4060
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$t;->c:J

    return-wide p1
.end method

.method public static a(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/gl$t$a;
    .locals 1

    .prologue
    .line 13405
    invoke-static {}, Lcom/tapjoy/internal/gl$t$a;->e()Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    .line 4408
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gl$t$a;->a(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gl$t;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4060
    iput-object p1, p0, Lcom/tapjoy/internal/gl$t;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$t;J)J
    .locals 1

    .prologue
    .line 4060
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$t;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/gl$t;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4060
    iget-object v0, p0, Lcom/tapjoy/internal/gl$t;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/gl$t;)Lcom/tapjoy/internal/dk;
    .locals 1

    .prologue
    .line 4060
    iget-object v0, p0, Lcom/tapjoy/internal/gl$t;->f:Lcom/tapjoy/internal/dk;

    return-object v0
.end method

.method public static d()Lcom/tapjoy/internal/gl$t;
    .locals 1

    .prologue
    .line 4073
    sget-object v0, Lcom/tapjoy/internal/gl$t;->e:Lcom/tapjoy/internal/gl$t;

    return-object v0
.end method

.method public static i()Lcom/tapjoy/internal/gl$t$a;
    .locals 1

    .prologue
    .line 4405
    invoke-static {}, Lcom/tapjoy/internal/gl$t$a;->e()Lcom/tapjoy/internal/gl$t$a;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/tapjoy/internal/dk;
    .locals 2

    .prologue
    .line 4187
    iget-object v0, p0, Lcom/tapjoy/internal/gl$t;->h:Ljava/lang/Object;

    .line 4188
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4189
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/dk;->a(Ljava/lang/String;)Lcom/tapjoy/internal/dk;

    move-result-object v0

    .line 4192
    iput-object v0, p0, Lcom/tapjoy/internal/gl$t;->h:Ljava/lang/Object;

    .line 4195
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 4230
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$t;->h:Ljava/lang/Object;

    .line 4231
    iput-wide v2, p0, Lcom/tapjoy/internal/gl$t;->c:J

    .line 4232
    iput-wide v2, p0, Lcom/tapjoy/internal/gl$t;->d:J

    .line 4233
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/dm;)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4254
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->b()I

    .line 4255
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4256
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t;->j()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/internal/dm;->a(ILcom/tapjoy/internal/dk;)V

    .line 4258
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4259
    iget-wide v0, p0, Lcom/tapjoy/internal/gl$t;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/tapjoy/internal/dm;->a(IJ)V

    .line 4261
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->g:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 4262
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$t;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/tapjoy/internal/dm;->a(IJ)V

    .line 4264
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gl$t;->f:Lcom/tapjoy/internal/dk;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dm;->c(Lcom/tapjoy/internal/dk;)V

    .line 4265
    return-void
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 4269
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->j:I

    .line 4270
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4287
    :goto_0
    return v0

    .line 4272
    :cond_0
    const/4 v0, 0x0

    .line 4273
    iget v1, p0, Lcom/tapjoy/internal/gl$t;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 4274
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$t;->j()Lcom/tapjoy/internal/dk;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/internal/dm;->b(ILcom/tapjoy/internal/dk;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4277
    :cond_1
    iget v1, p0, Lcom/tapjoy/internal/gl$t;->g:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 4278
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$t;->c:J

    invoke-static {v4, v2, v3}, Lcom/tapjoy/internal/dm;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4281
    :cond_2
    iget v1, p0, Lcom/tapjoy/internal/gl$t;->g:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 4282
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/tapjoy/internal/gl$t;->d:J

    invoke-static {v1, v2, v3}, Lcom/tapjoy/internal/dm;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4285
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/gl$t;->f:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 4286
    iput v0, p0, Lcom/tapjoy/internal/gl$t;->j:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4236
    iget-byte v2, p0, Lcom/tapjoy/internal/gl$t;->i:B

    .line 4237
    if-ne v2, v0, :cond_0

    .line 4249
    :goto_0
    return v0

    .line 4238
    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 4240
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4241
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$t;->i:B

    move v0, v1

    .line 4242
    goto :goto_0

    .line 4244
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->g()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4245
    iput-byte v1, p0, Lcom/tapjoy/internal/gl$t;->i:B

    move v0, v1

    .line 4246
    goto :goto_0

    .line 4248
    :cond_3
    iput-byte v0, p0, Lcom/tapjoy/internal/gl$t;->i:B

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4163
    iget v1, p0, Lcom/tapjoy/internal/gl$t;->g:I

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
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4299
    if-ne p1, p0, :cond_1

    .line 4323
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 4302
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/tapjoy/internal/gl$t;

    if-nez v0, :cond_2

    .line 4303
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 4305
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/gl$t;

    .line 4308
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->e()Z

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    .line 4309
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4310
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 4313
    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->g()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 4314
    :goto_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4315
    if-eqz v0, :cond_9

    .line 10211
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$t;->c:J

    .line 11211
    iget-wide v6, p1, Lcom/tapjoy/internal/gl$t;->c:J

    .line 4315
    cmp-long v0, v4, v6

    if-nez v0, :cond_9

    move v0, v1

    .line 4318
    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->h()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$t;->h()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    .line 4319
    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->h()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4320
    if-eqz v0, :cond_5

    .line 11226
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$t;->d:J

    .line 12226
    iget-wide v6, p1, Lcom/tapjoy/internal/gl$t;->d:J

    .line 4320
    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    .line 4308
    goto :goto_1

    :cond_7
    move v0, v2

    .line 4310
    goto :goto_2

    :cond_8
    move v0, v2

    .line 4313
    goto :goto_3

    :cond_9
    move v0, v2

    .line 4315
    goto :goto_4

    :cond_a
    move v0, v2

    .line 4318
    goto :goto_5

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4169
    iget-object v0, p0, Lcom/tapjoy/internal/gl$t;->h:Ljava/lang/Object;

    .line 4170
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4171
    check-cast v0, Ljava/lang/String;

    .line 4179
    :goto_0
    return-object v0

    .line 4173
    :cond_0
    check-cast v0, Lcom/tapjoy/internal/dk;

    .line 4175
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->e()Ljava/lang/String;

    move-result-object v1

    .line 4176
    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4177
    iput-object v1, p0, Lcom/tapjoy/internal/gl$t;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4179
    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 4205
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->g:I

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

    .prologue
    .line 4220
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->g:I

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

    .prologue
    .line 4328
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->a:I

    if-eqz v0, :cond_0

    .line 4329
    iget v0, p0, Lcom/tapjoy/internal/gl$t;->a:I

    .line 4349
    :goto_0
    return v0

    .line 4332
    :cond_0
    const-class v0, Lcom/tapjoy/internal/gl$t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 4333
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4334
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 4335
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4337
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4338
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 4339
    mul-int/lit8 v0, v0, 0x35

    .line 13211
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$t;->c:J

    .line 4339
    invoke-static {v2, v3}, Lcom/tapjoy/internal/dp;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 4342
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$t;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4343
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 4344
    mul-int/lit8 v0, v0, 0x35

    .line 13226
    iget-wide v2, p0, Lcom/tapjoy/internal/gl$t;->d:J

    .line 4344
    invoke-static {v2, v3}, Lcom/tapjoy/internal/dp;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 4347
    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/tapjoy/internal/gl$t;->f:Lcom/tapjoy/internal/dk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4348
    iput v0, p0, Lcom/tapjoy/internal/gl$t;->a:I

    goto :goto_0
.end method
