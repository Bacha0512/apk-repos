.class Lcom/github/hiteshsondhi88/libffmpeg/f;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Lcom/github/hiteshsondhi88/libffmpeg/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Lcom/github/hiteshsondhi88/libffmpeg/g;

.field private final c:Lcom/github/hiteshsondhi88/libffmpeg/n;

.field private final d:J

.field private e:J

.field private f:Ljava/lang/Process;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;JLcom/github/hiteshsondhi88/libffmpeg/g;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->a:[Ljava/lang/String;

    iput-wide p2, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->d:J

    iput-object p4, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->b:Lcom/github/hiteshsondhi88/libffmpeg/g;

    new-instance v0, Lcom/github/hiteshsondhi88/libffmpeg/n;

    invoke-direct {v0}, Lcom/github/hiteshsondhi88/libffmpeg/n;-><init>()V

    iput-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->c:Lcom/github/hiteshsondhi88/libffmpeg/n;

    return-void
.end method

.method private b()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->f:Ljava/lang/Process;

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/o;->b(Ljava/lang/Process;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->f:Ljava/lang/Process;

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/o;->b(Ljava/lang/Process;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->d:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->e:J

    iget-wide v4, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->d:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "FFmpeg timed out"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->f:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/github/hiteshsondhi88/libffmpeg/f;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->g:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/github/hiteshsondhi88/libffmpeg/f;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/github/hiteshsondhi88/libffmpeg/a;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->c:Lcom/github/hiteshsondhi88/libffmpeg/n;

    iget-object v1, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/hiteshsondhi88/libffmpeg/n;->a([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->f:Ljava/lang/Process;

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->f:Ljava/lang/Process;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/github/hiteshsondhi88/libffmpeg/a;->a()Lcom/github/hiteshsondhi88/libffmpeg/a;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->f:Ljava/lang/Process;

    invoke-static {v1}, Lcom/github/hiteshsondhi88/libffmpeg/o;->a(Ljava/lang/Process;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "Running publishing updates method"

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/l;->a(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/github/hiteshsondhi88/libffmpeg/f;->b()V

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->f:Ljava/lang/Process;

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/a;->a(Ljava/lang/Process;)Lcom/github/hiteshsondhi88/libffmpeg/a;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->f:Ljava/lang/Process;

    invoke-static {v1}, Lcom/github/hiteshsondhi88/libffmpeg/o;->a(Ljava/lang/Process;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    const-string v0, "FFmpeg timed out"

    invoke-static {v0, v1}, Lcom/github/hiteshsondhi88/libffmpeg/l;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/github/hiteshsondhi88/libffmpeg/a;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/github/hiteshsondhi88/libffmpeg/a;-><init>(ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->f:Ljava/lang/Process;

    invoke-static {v1}, Lcom/github/hiteshsondhi88/libffmpeg/o;->a(Ljava/lang/Process;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "Error running FFmpeg"

    invoke-static {v1, v0}, Lcom/github/hiteshsondhi88/libffmpeg/l;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->f:Ljava/lang/Process;

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/o;->a(Ljava/lang/Process;)V

    invoke-static {}, Lcom/github/hiteshsondhi88/libffmpeg/a;->a()Lcom/github/hiteshsondhi88/libffmpeg/a;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->f:Ljava/lang/Process;

    invoke-static {v1}, Lcom/github/hiteshsondhi88/libffmpeg/o;->a(Ljava/lang/Process;)V

    throw v0
.end method

.method protected a(Lcom/github/hiteshsondhi88/libffmpeg/a;)V
    .locals 2

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->b:Lcom/github/hiteshsondhi88/libffmpeg/g;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/github/hiteshsondhi88/libffmpeg/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->g:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/github/hiteshsondhi88/libffmpeg/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->b:Lcom/github/hiteshsondhi88/libffmpeg/g;

    iget-object v1, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/github/hiteshsondhi88/libffmpeg/g;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->b:Lcom/github/hiteshsondhi88/libffmpeg/g;

    invoke-interface {v0}, Lcom/github/hiteshsondhi88/libffmpeg/g;->b()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->b:Lcom/github/hiteshsondhi88/libffmpeg/g;

    iget-object v1, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/github/hiteshsondhi88/libffmpeg/g;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->b:Lcom/github/hiteshsondhi88/libffmpeg/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->b:Lcom/github/hiteshsondhi88/libffmpeg/g;

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lcom/github/hiteshsondhi88/libffmpeg/g;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->f:Ljava/lang/Process;

    invoke-static {v0}, Lcom/github/hiteshsondhi88/libffmpeg/o;->b(Ljava/lang/Process;)Z

    move-result v0

    return v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/github/hiteshsondhi88/libffmpeg/f;->a([Ljava/lang/Void;)Lcom/github/hiteshsondhi88/libffmpeg/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/github/hiteshsondhi88/libffmpeg/a;

    invoke-virtual {p0, p1}, Lcom/github/hiteshsondhi88/libffmpeg/f;->a(Lcom/github/hiteshsondhi88/libffmpeg/a;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->e:J

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->b:Lcom/github/hiteshsondhi88/libffmpeg/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/hiteshsondhi88/libffmpeg/f;->b:Lcom/github/hiteshsondhi88/libffmpeg/g;

    invoke-interface {v0}, Lcom/github/hiteshsondhi88/libffmpeg/g;->a()V

    :cond_0
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/hiteshsondhi88/libffmpeg/f;->a([Ljava/lang/String;)V

    return-void
.end method
