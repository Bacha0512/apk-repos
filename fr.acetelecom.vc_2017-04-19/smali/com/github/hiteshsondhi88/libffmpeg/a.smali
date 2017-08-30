.class Lcom/github/hiteshsondhi88/libffmpeg/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/github/hiteshsondhi88/libffmpeg/a;->b:Z

    iput-object p2, p0, Lcom/github/hiteshsondhi88/libffmpeg/a;->a:Ljava/lang/String;

    return-void
.end method

.method static a()Lcom/github/hiteshsondhi88/libffmpeg/a;
    .locals 3

    new-instance v0, Lcom/github/hiteshsondhi88/libffmpeg/a;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/hiteshsondhi88/libffmpeg/a;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/lang/Process;)Lcom/github/hiteshsondhi88/libffmpeg/a;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/a;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/o;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/github/hiteshsondhi88/libffmpeg/a;

    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/github/hiteshsondhi88/libffmpeg/a;->a(Ljava/lang/Integer;)Z

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/github/hiteshsondhi88/libffmpeg/a;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/o;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/Integer;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
