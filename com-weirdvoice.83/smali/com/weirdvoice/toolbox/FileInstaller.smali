.class public Lcom/weirdvoice/toolbox/FileInstaller;
.super Ljava/lang/Object;
.source "FileInstaller.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unzipAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFilename"    # Ljava/lang/String;
    .param p2, "dstDir"    # Ljava/lang/String;
    .param p3, "dstFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 35
    .local v2, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    .local v5, "zis":Ljava/util/zip/GZIPInputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 42
    :cond_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v4, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v4, "out":Ljava/io/RandomAccessFile;
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 47
    const/16 v6, 0x800

    new-array v0, v6, [B

    .line 49
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-gtz v3, :cond_1

    .line 51
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 52
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 53
    return-void

    .line 50
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0
.end method
