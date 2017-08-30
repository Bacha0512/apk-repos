.class public final Lcom/tapjoy/internal/gt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/tapjoy/internal/bm;

.field private static final d:Lcom/tapjoy/internal/ar;


# instance fields
.field public a:Ljava/net/URL;

.field public b:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/tapjoy/internal/av;

    invoke-direct {v0}, Lcom/tapjoy/internal/av;-><init>()V

    .line 3012
    instance-of v1, v0, Lcom/tapjoy/internal/aw;

    if-eqz v1, :cond_0

    .line 26
    :goto_0
    sput-object v0, Lcom/tapjoy/internal/gt;->d:Lcom/tapjoy/internal/ar;

    .line 127
    new-instance v0, Lcom/tapjoy/internal/gt$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gt$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gt;->c:Lcom/tapjoy/internal/bm;

    return-void

    .line 3015
    :cond_0
    new-instance v1, Lcom/tapjoy/internal/at$a;

    check-cast v0, Lcom/tapjoy/internal/au;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/at$a;-><init>(Lcom/tapjoy/internal/au;)V

    move-object v0, v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/tapjoy/internal/br;)V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2097
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->k()Lcom/tapjoy/internal/bw;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bw;->f:Lcom/tapjoy/internal/bw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 111
    :goto_0
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->e()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gt;->a:Ljava/net/URL;

    .line 125
    :goto_1
    return-void

    .line 2097
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    .line 115
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    const-string v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->e()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gt;->a:Ljava/net/URL;

    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_2

    .line 123
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tapjoy/internal/gt;->a:Ljava/net/URL;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-static {}, Lcom/tapjoy/internal/eu;->b()Lcom/tapjoy/internal/es;

    move-result-object v2

    const-string v3, "mm_external_cache_enabled"

    invoke-virtual {v2, v3, v0}, Lcom/tapjoy/internal/es;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 44
    if-nez v2, :cond_1

    move v6, v0

    .line 46
    :goto_0
    if-eqz v6, :cond_2

    .line 47
    sget-object v0, Lcom/tapjoy/internal/gt;->d:Lcom/tapjoy/internal/ar;

    iget-object v3, p0, Lcom/tapjoy/internal/gt;->a:Ljava/net/URL;

    invoke-interface {v0, v3}, Lcom/tapjoy/internal/ar;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    .line 48
    iget-object v0, p0, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 108
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v6, v1

    .line 44
    goto :goto_0

    .line 53
    :cond_2
    if-eqz v2, :cond_4

    .line 54
    sget-object v0, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gp;

    iget-object v3, p0, Lcom/tapjoy/internal/gt;->a:Ljava/net/URL;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/gp;->a(Ljava/net/URL;)Ljava/io/File;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    sget-object v3, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gp;

    invoke-static {v0}, Lcom/tapjoy/internal/gp;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    .line 57
    iget-object v3, p0, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 58
    if-eqz v6, :cond_0

    .line 59
    sget-object v0, Lcom/tapjoy/internal/gt;->d:Lcom/tapjoy/internal/ar;

    iget-object v1, p0, Lcom/tapjoy/internal/gt;->a:Ljava/net/URL;

    iget-object v2, p0, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/ar;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/gt;->a:Ljava/net/URL;

    invoke-static {v0}, Lcom/tapjoy/internal/eh;->a(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v3

    .line 69
    const-wide/16 v4, 0x0

    .line 70
    const-string v0, "Cache-Control"

    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 72
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 73
    array-length v8, v7

    move v0, v1

    :goto_2
    if-ge v0, v8, :cond_5

    aget-object v1, v7, v0

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v9, "max-age="

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 76
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 87
    :cond_5
    :goto_3
    sget-object v0, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gp;

    invoke-static {v4, v5}, Lcom/tapjoy/internal/gp;->a(J)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v2, :cond_9

    .line 88
    :cond_6
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/tapjoy/internal/u;->a:Lcom/tapjoy/internal/u;

    invoke-static {v0}, Lcom/tapjoy/internal/u;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    .line 105
    :cond_7
    :goto_4
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/tapjoy/internal/gt;->d:Lcom/tapjoy/internal/ar;

    iget-object v1, p0, Lcom/tapjoy/internal/gt;->a:Ljava/net/URL;

    iget-object v2, p0, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/ar;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 73
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 91
    :cond_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 92
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 93
    invoke-static {v1, v0}, Lcom/tapjoy/internal/cy;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 95
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 97
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    sget-object v0, Lcom/tapjoy/internal/u;->a:Lcom/tapjoy/internal/u;

    invoke-static {v3}, Lcom/tapjoy/internal/u;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    .line 99
    iget-object v0, p0, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 100
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 101
    sget-object v1, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gp;

    iget-object v2, p0, Lcom/tapjoy/internal/gt;->a:Ljava/net/URL;

    .line 1129
    iget-object v0, v1, Lcom/tapjoy/internal/gp;->b:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 1132
    iget-object v7, v1, Lcom/tapjoy/internal/gp;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/tapjoy/internal/gp$2;

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/internal/gp$2;-><init>(Lcom/tapjoy/internal/gp;Ljava/net/URL;Ljava/io/InputStream;J)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_4

    .line 82
    :catch_0
    move-exception v0

    goto :goto_3
.end method
