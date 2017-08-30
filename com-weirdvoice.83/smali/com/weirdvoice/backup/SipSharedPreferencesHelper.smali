.class public Lcom/weirdvoice/backup/SipSharedPreferencesHelper;
.super Ljava/lang/Object;
.source "SipSharedPreferencesHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static final SETTINGS_BACKUP_KEY:Ljava/lang/String; = "settings"

.field private static final THIS_FILE:Ljava/lang/String; = "SipSharedPreferencesHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final prefsFiles:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;->mContext:Landroid/content/Context;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "sharedPrefsName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;->getPreferenceFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;->prefsFiles:Ljava/io/File;

    .line 65
    return-void
.end method

.method private getPreferenceFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shared_prefs/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "finalPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "../"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 171
    :goto_0
    return-object v2

    .line 163
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 165
    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/dbdata/databases/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 169
    goto :goto_0

    .line 171
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
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
    .line 196
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v4

    new-array v1, v4, [B

    .line 197
    .local v1, "buf":[B
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {p1, v1, v4, v5}, Landroid/app/backup/BackupDataInputStream;->read([BII)I

    .line 198
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 199
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    .local v3, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "dataS":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 202
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 203
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
    .line 176
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    .local v0, "bufStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 179
    .local v3, "outWriter":Ljava/io/DataOutputStream;
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 182
    .local v1, "buffer":[B
    array-length v2, v1

    .line 183
    .local v2, "len":I
    const-string v4, "settings"

    invoke-virtual {p1, v4, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 184
    invoke-virtual {p1, v1, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 185
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 16
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 72
    if-nez p1, :cond_3

    const/4 v3, 0x1

    .line 74
    .local v3, "forceBackup":Z
    :goto_0
    const-wide/16 v4, 0x1

    .line 75
    .local v4, "fileModified":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;->prefsFiles:Ljava/io/File;

    if-eqz v13, :cond_0

    .line 76
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;->prefsFiles:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 79
    :cond_0
    if-nez v3, :cond_1

    .line 80
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 81
    .local v7, "instream":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    .local v6, "in":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 83
    .local v8, "lastModified":J
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    cmp-long v13, v8, v4

    if-gez v13, :cond_1

    .line 86
    const/4 v3, 0x1

    .line 94
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "instream":Ljava/io/FileInputStream;
    .end local v8    # "lastModified":J
    :cond_1
    :goto_1
    const-string v13, "SipSharedPreferencesHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Will backup profiles ? "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-eqz v3, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/weirdvoice/backup/SipProfileJson;->serializeSipSettings(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v12

    .line 98
    .local v12, "settings":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .end local v12    # "settings":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    :try_start_2
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 106
    .local v11, "outstream":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    .local v10, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v10, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 108
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .end local v11    # "outstream":Ljava/io/FileOutputStream;
    :goto_3
    return-void

    .line 72
    .end local v3    # "forceBackup":Z
    .end local v4    # "fileModified":J
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 89
    .restart local v3    # "forceBackup":Z
    .restart local v4    # "fileModified":J
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    const-string v13, "SipSharedPreferencesHelper"

    const-string v14, "Cannot manage previous local backup state"

    invoke-static {v13, v14, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    const/4 v3, 0x1

    goto :goto_1

    .line 99
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v12    # "settings":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 100
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v13, "SipSharedPreferencesHelper"

    const-string v14, "Cannot manage remote backup"

    invoke-static {v13, v14, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 109
    .end local v2    # "e":Ljava/io/IOException;
    .end local v12    # "settings":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    .line 110
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v13, "SipSharedPreferencesHelper"

    const-string v14, "Cannot manage final local backup state"

    invoke-static {v13, v14, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 6
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    .line 119
    const-string v4, "settings"

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    :try_start_0
    invoke-direct {p0, p1}, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;->readData(Landroid/app/backup/BackupDataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "settingsStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "settings":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 124
    iget-object v4, p0, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/weirdvoice/backup/SipProfileJson;->restoreSipSettings(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 126
    :cond_0
    new-instance v1, Lcom/weirdvoice/utils/PreferencesWrapper;

    iget-object v4, p0, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 127
    .local v1, "pw":Lcom/weirdvoice/utils/PreferencesWrapper;
    const-string v4, "has_already_setup_service"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 128
    const-string v4, "has_already_setup"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    .end local v1    # "pw":Lcom/weirdvoice/utils/PreferencesWrapper;
    .end local v2    # "settings":Lorg/json/JSONObject;
    .end local v3    # "settingsStr":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "SipSharedPreferencesHelper"

    const-string v5, "Cannot restore backup entry"

    invoke-static {v4, v5, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "SipSharedPreferencesHelper"

    const-string v5, "Cannot parse backup entry"

    invoke-static {v4, v5, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 141
    const-wide/16 v2, 0x0

    .line 142
    .local v2, "fileModified":J
    iget-object v5, p0, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;->prefsFiles:Ljava/io/File;

    if-eqz v5, :cond_0

    .line 143
    iget-object v5, p0, Lcom/weirdvoice/backup/SipSharedPreferencesHelper;->prefsFiles:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 146
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 147
    .local v4, "outstream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 148
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 149
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .end local v4    # "outstream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "SipSharedPreferencesHelper"

    const-string v6, "Cannot manage final local backup state"

    invoke-static {v5, v6, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
