.class public Lcom/weirdvoice/backup/SipProfilesHelper;
.super Ljava/lang/Object;
.source "SipProfilesHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static final ACCOUNTS_BACKUP_KEY:Ljava/lang/String; = "accounts"

.field private static final THIS_FILE:Ljava/lang/String; = "SipProfileHelper"


# instance fields
.field private databaseFile:Ljava/io/File;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/weirdvoice/backup/SipProfilesHelper;->mContext:Landroid/content/Context;

    .line 63
    const-string v0, "com.weirdvoice.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/backup/SipProfilesHelper;->databaseFile:Ljava/io/File;

    .line 64
    return-void
.end method

.method private readData(Landroid/app/backup/BackupDataInputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v4

    new-array v1, v4, [B

    .line 177
    .local v1, "buf":[B
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {p1, v1, v4, v5}, Landroid/app/backup/BackupDataInputStream;->read([BII)I

    .line 178
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 179
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 180
    .local v3, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "dataS":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 182
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 183
    return-object v2
.end method

.method private writeData(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    .local v0, "bufStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v3, "outWriter":Ljava/io/DataOutputStream;
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 162
    .local v1, "buffer":[B
    array-length v2, v1

    .line 163
    .local v2, "len":I
    const-string v4, "accounts"

    invoke-virtual {p1, v4, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 164
    invoke-virtual {p1, v1, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 165
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 16
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 75
    if-nez p1, :cond_2

    const/4 v6, 0x1

    .line 77
    .local v6, "forceBackup":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/backup/SipProfilesHelper;->databaseFile:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 79
    .local v4, "fileModified":J
    if-nez v6, :cond_0

    .line 80
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 81
    .local v8, "instream":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    .local v7, "in":Ljava/io/DataInputStream;
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    .line 83
    .local v10, "lastModified":J
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    cmp-long v13, v10, v4

    if-gez v13, :cond_0

    .line 86
    const/4 v6, 0x1

    .line 94
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v8    # "instream":Ljava/io/FileInputStream;
    .end local v10    # "lastModified":J
    :cond_0
    :goto_1
    const-string v13, "SipProfileHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Will backup profiles ? "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-eqz v6, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/backup/SipProfilesHelper;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/weirdvoice/backup/SipProfileJson;->serializeSipProfiles(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    .line 98
    .local v2, "accountsSaved":Lorg/json/JSONArray;
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/weirdvoice/backup/SipProfilesHelper;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .end local v2    # "accountsSaved":Lorg/json/JSONArray;
    :cond_1
    :goto_2
    :try_start_2
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 106
    .local v12, "outstream":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    .local v9, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v9, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 108
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v12    # "outstream":Ljava/io/FileOutputStream;
    :goto_3
    return-void

    .line 75
    .end local v4    # "fileModified":J
    .end local v6    # "forceBackup":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 89
    .restart local v4    # "fileModified":J
    .restart local v6    # "forceBackup":Z
    :catch_0
    move-exception v3

    .line 90
    .local v3, "e":Ljava/io/IOException;
    const-string v13, "SipProfileHelper"

    const-string v14, "Cannot manage previous local backup state"

    invoke-static {v13, v14, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    const/4 v6, 0x1

    goto :goto_1

    .line 99
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "accountsSaved":Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    .line 100
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v13, "SipProfileHelper"

    const-string v14, "Cannot manage remote backup"

    invoke-static {v13, v14, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 109
    .end local v2    # "accountsSaved":Lorg/json/JSONArray;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 110
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v13, "SipProfileHelper"

    const-string v14, "Cannot manage final local backup state"

    invoke-static {v13, v14, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 5
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    .line 121
    const-string v3, "accounts"

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    :try_start_0
    invoke-direct {p0, p1}, Lcom/weirdvoice/backup/SipProfilesHelper;->readData(Landroid/app/backup/BackupDataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "profilesStr":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "accounts":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/weirdvoice/backup/SipProfilesHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/weirdvoice/backup/SipProfileJson;->restoreSipAccounts(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .end local v0    # "accounts":Lorg/json/JSONArray;
    .end local v2    # "profilesStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "SipProfileHelper"

    const-string v4, "Cannot restore backup entry"

    invoke-static {v3, v4, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 131
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "SipProfileHelper"

    const-string v4, "Cannot parse backup entry"

    invoke-static {v3, v4, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 143
    iget-object v5, p0, Lcom/weirdvoice/backup/SipProfilesHelper;->databaseFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 145
    .local v2, "fileModified":J
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 146
    .local v4, "outstream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 147
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 148
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .end local v4    # "outstream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "SipProfileHelper"

    const-string v6, "Cannot manage final local backup state"

    invoke-static {v5, v6, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
