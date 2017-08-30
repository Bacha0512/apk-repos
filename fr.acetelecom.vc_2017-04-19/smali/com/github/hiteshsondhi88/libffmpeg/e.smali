.class public Lcom/github/hiteshsondhi88/libffmpeg/e;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/github/hiteshsondhi88/libffmpeg/e;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/github/hiteshsondhi88/libffmpeg/f;

.field private c:Lcom/github/hiteshsondhi88/libffmpeg/i;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/github/hiteshsondhi88/libffmpeg/e;->e:Lcom/github/hiteshsondhi88/libffmpeg/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/e;->d:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/e;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/o;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/l;->a(Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/github/hiteshsondhi88/libffmpeg/e;
    .locals 1

    sget-object v0, Lcom/github/hiteshsondhi88/libffmpeg/e;->e:Lcom/github/hiteshsondhi88/libffmpeg/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/hiteshsondhi88/libffmpeg/e;

    invoke-direct {v0, p0}, Lcom/github/hiteshsondhi88/libffmpeg/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/github/hiteshsondhi88/libffmpeg/e;->e:Lcom/github/hiteshsondhi88/libffmpeg/e;

    :cond_0
    sget-object v0, Lcom/github/hiteshsondhi88/libffmpeg/e;->e:Lcom/github/hiteshsondhi88/libffmpeg/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/github/hiteshsondhi88/libffmpeg/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/hiteshsondhi88/libffmpeg/a/b;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/github/hiteshsondhi88/libffmpeg/e$1;->a:[I

    invoke-static {}, Lcom/github/hiteshsondhi88/libffmpeg/c;->a()Lcom/github/hiteshsondhi88/libffmpeg/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/hiteshsondhi88/libffmpeg/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/github/hiteshsondhi88/libffmpeg/i;

    iget-object v2, p0, Lcom/github/hiteshsondhi88/libffmpeg/e;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p1}, Lcom/github/hiteshsondhi88/libffmpeg/i;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/github/hiteshsondhi88/libffmpeg/h;)V

    iput-object v1, p0, Lcom/github/hiteshsondhi88/libffmpeg/e;->c:Lcom/github/hiteshsondhi88/libffmpeg/i;

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/e;->c:Lcom/github/hiteshsondhi88/libffmpeg/i;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/github/hiteshsondhi88/libffmpeg/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :pswitch_0
    const-string v0, "Loading FFmpeg for x86 CPU"

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/l;->b(Ljava/lang/Object;)V

    const-string v0, "x86"

    goto :goto_0

    :pswitch_1
    const-string v0, "Loading FFmpeg for armv7 CPU"

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/l;->b(Ljava/lang/Object;)V

    const-string v0, "armeabi-v7a"

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/github/hiteshsondhi88/libffmpeg/a/b;

    const-string v1, "Device not supported"

    invoke-direct {v0, v1}, Lcom/github/hiteshsondhi88/libffmpeg/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/github/hiteshsondhi88/libffmpeg/a/b;

    const-string v1, "Device not supported"

    invoke-direct {v0, v1}, Lcom/github/hiteshsondhi88/libffmpeg/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/util/Map;[Ljava/lang/String;Lcom/github/hiteshsondhi88/libffmpeg/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/github/hiteshsondhi88/libffmpeg/g;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/hiteshsondhi88/libffmpeg/a/a;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/e;->b:Lcom/github/hiteshsondhi88/libffmpeg/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/e;->b:Lcom/github/hiteshsondhi88/libffmpeg/f;

    invoke-virtual {v0}, Lcom/github/hiteshsondhi88/libffmpeg/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/hiteshsondhi88/libffmpeg/a/a;

    const-string v1, "FFmpeg command is already running, you are only allowed to run single command at a time"

    invoke-direct {v0, v1}, Lcom/github/hiteshsondhi88/libffmpeg/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/github/hiteshsondhi88/libffmpeg/e;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/github/hiteshsondhi88/libffmpeg/j;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0, p2}, Lcom/github/hiteshsondhi88/libffmpeg/e;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Lcom/github/hiteshsondhi88/libffmpeg/f;

    iget-wide v2, p0, Lcom/github/hiteshsondhi88/libffmpeg/e;->d:J

    invoke-direct {v1, v0, v2, v3, p3}, Lcom/github/hiteshsondhi88/libffmpeg/f;-><init>([Ljava/lang/String;JLcom/github/hiteshsondhi88/libffmpeg/g;)V

    iput-object v1, p0, Lcom/github/hiteshsondhi88/libffmpeg/e;->b:Lcom/github/hiteshsondhi88/libffmpeg/f;

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/e;->b:Lcom/github/hiteshsondhi88/libffmpeg/f;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/github/hiteshsondhi88/libffmpeg/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "shell command cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([Ljava/lang/String;Lcom/github/hiteshsondhi88/libffmpeg/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/hiteshsondhi88/libffmpeg/a/a;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/github/hiteshsondhi88/libffmpeg/e;->a(Ljava/util/Map;[Ljava/lang/String;Lcom/github/hiteshsondhi88/libffmpeg/g;)V

    return-void
.end method

.method public a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    const/4 v4, 0x0

    array-length v1, p1

    array-length v2, p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int v3, v1, v2

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
