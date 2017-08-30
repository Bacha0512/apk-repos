.class public final Lcom/tapjoy/internal/i;
.super Lcom/tapjoy/internal/ax;

# interfaces
.implements Lcom/tapjoy/internal/bb;
.implements Ljava/io/Closeable;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/tapjoy/internal/bh;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/tapjoy/internal/bh;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tapjoy/internal/ax;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/tapjoy/internal/i;->b:Lcom/tapjoy/internal/bh;

    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS List(value BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/i;->a()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/i;->c:I

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private a()I
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(1) FROM List"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {v1}, Lcom/tapjoy/internal/i;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Lcom/tapjoy/internal/i;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/tapjoy/internal/i;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    throw v0
.end method

.method private static a(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/i;->c:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT value FROM List ORDER BY rowid LIMIT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/i;->b:Lcom/tapjoy/internal/bh;

    invoke-interface {v0, v2}, Lcom/tapjoy/internal/bh;->b(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-static {v2}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/tapjoy/internal/i;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v2}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/tapjoy/internal/i;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    throw v0

    :cond_2
    :try_start_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method public final b(I)V
    .locals 7

    const/4 v1, 0x0

    if-lez p1, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/i;->c:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/i;->c:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/tapjoy/internal/i;->clear()V

    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT rowid FROM List ORDER BY rowid LIMIT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "List"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "rowid <= "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/tapjoy/internal/i;->c:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/tapjoy/internal/i;->c:I

    if-eq v0, p1, :cond_4

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Try to delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcom/tapjoy/internal/i;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    throw v0

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/tapjoy/internal/i;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public final clear()V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "List"

    const-string v2, "1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/i;->c:I

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/internal/i;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {p1}, Lcom/tapjoy/internal/cq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/i;->b:Lcom/tapjoy/internal/bh;

    invoke-interface {v0, v1, p1}, Lcom/tapjoy/internal/bh;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v1}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "value"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/tapjoy/internal/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "List"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/tapjoy/internal/da;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/i;->c:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/i;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/i;->a(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/i;->c:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/internal/i;->peek()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/i;->b(I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/internal/i;->c:I

    return v0
.end method
