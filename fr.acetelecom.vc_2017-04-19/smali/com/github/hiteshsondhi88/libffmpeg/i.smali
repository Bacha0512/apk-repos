.class Lcom/github/hiteshsondhi88/libffmpeg/i;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/github/hiteshsondhi88/libffmpeg/h;

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/github/hiteshsondhi88/libffmpeg/h;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/github/hiteshsondhi88/libffmpeg/i;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/github/hiteshsondhi88/libffmpeg/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/hiteshsondhi88/libffmpeg/i;->b:Lcom/github/hiteshsondhi88/libffmpeg/h;

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/b;->a(Ljava/lang/String;)Lcom/github/hiteshsondhi88/libffmpeg/b;

    move-result-object v0

    sget-object v1, Lcom/github/hiteshsondhi88/libffmpeg/b;->c:Lcom/github/hiteshsondhi88/libffmpeg/b;

    invoke-virtual {v0, v1}, Lcom/github/hiteshsondhi88/libffmpeg/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/github/hiteshsondhi88/libffmpeg/i;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/github/hiteshsondhi88/libffmpeg/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/github/hiteshsondhi88/libffmpeg/i;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/github/hiteshsondhi88/libffmpeg/i;->c:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/github/hiteshsondhi88/libffmpeg/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ffmpeg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ffmpeg"

    invoke-static {v3, v4, v5}, Lcom/github/hiteshsondhi88/libffmpeg/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "FFmpeg is not executable, trying to make it executable ..."

    invoke-static {v3}, Lcom/github/hiteshsondhi88/libffmpeg/l;->a(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->setExecutable(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "FFmpeg is executable"

    invoke-static {v1}, Lcom/github/hiteshsondhi88/libffmpeg/l;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/i;->b:Lcom/github/hiteshsondhi88/libffmpeg/h;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/i;->b:Lcom/github/hiteshsondhi88/libffmpeg/h;

    invoke-interface {v0}, Lcom/github/hiteshsondhi88/libffmpeg/h;->d()V

    :goto_0
    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/i;->b:Lcom/github/hiteshsondhi88/libffmpeg/h;

    invoke-interface {v0}, Lcom/github/hiteshsondhi88/libffmpeg/h;->b()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/i;->b:Lcom/github/hiteshsondhi88/libffmpeg/h;

    invoke-interface {v0}, Lcom/github/hiteshsondhi88/libffmpeg/h;->c()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/github/hiteshsondhi88/libffmpeg/i;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/github/hiteshsondhi88/libffmpeg/i;->a(Ljava/lang/Boolean;)V

    return-void
.end method
