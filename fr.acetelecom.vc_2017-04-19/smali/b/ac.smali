.class public abstract Lb/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lb/u;JLc/e;)Lb/ac;
    .locals 3

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lb/ac$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/ac$1;-><init>(Lb/u;JLc/e;)V

    return-object v0
.end method

.method public static a(Lb/u;Ljava/lang/String;)Lb/ac;
    .locals 4

    sget-object v0, Lb/a/i;->c:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lb/u;->b()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lb/a/i;->c:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/u;->a(Ljava/lang/String;)Lb/u;

    move-result-object p0

    :cond_0
    new-instance v1, Lc/c;

    invoke-direct {v1}, Lc/c;-><init>()V

    invoke-virtual {v1, p1, v0}, Lc/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lc/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/c;->b()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v0}, Lb/ac;->a(Lb/u;JLc/e;)Lb/ac;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/nio/charset/Charset;
    .locals 2

    invoke-virtual {p0}, Lb/ac;->a()Lb/u;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lb/a/i;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lb/u;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lb/a/i;->c:Ljava/nio/charset/Charset;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lb/u;
.end method

.method public abstract b()J
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lb/ac;->d()Lc/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e;->h()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lb/ac;->d()Lc/e;

    move-result-object v0

    invoke-static {v0}, Lb/a/i;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract d()Lc/e;
.end method

.method public final e()Ljava/io/Reader;
    .locals 3

    iget-object v0, p0, Lb/ac;->a:Ljava/io/Reader;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lb/ac;->c()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lb/ac;->f()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lb/ac;->a:Ljava/io/Reader;

    goto :goto_0
.end method
