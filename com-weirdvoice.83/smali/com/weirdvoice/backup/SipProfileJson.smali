.class public final Lcom/weirdvoice/backup/SipProfileJson;
.super Ljava/lang/Object;
.source "SipProfileJson.java"


# static fields
.field private static final FILTER_KEY:Ljava/lang/String; = "filters"

.field private static final KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final THIS_FILE:Ljava/lang/String; = "SipProfileJson"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static getSipProfileColumns(Z)Lcom/weirdvoice/backup/Columns;
    .locals 3
    .param p0, "only_secure"    # Z

    .prologue
    .line 356
    new-instance v0, Lcom/weirdvoice/backup/Columns;

    sget-object v1, Lcom/weirdvoice/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    .line 357
    sget-object v2, Lcom/weirdvoice/db/DBProvider;->ACCOUNT_FULL_PROJECTION_TYPES:[Ljava/lang/Class;

    .line 356
    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/backup/Columns;-><init>([Ljava/lang/String;[Ljava/lang/Class;)V

    .line 358
    .local v0, "cols":Lcom/weirdvoice/backup/Columns;
    if-eqz p0, :cond_0

    .line 360
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/weirdvoice/backup/Columns;->removeColumn(Ljava/lang/String;)Z

    .line 362
    :cond_0
    return-object v0
.end method

.method public static restoreSipAccounts(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 7
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accounts"    # Lorg/json/JSONArray;

    .prologue
    const/4 v6, 0x0

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 341
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v4, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    const-string v5, "1"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 342
    sget-object v4, Lcom/weirdvoice/api/SipManager;->FILTER_URI:Landroid/net/Uri;

    const-string v5, "1"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 353
    return-void

    .line 347
    :cond_0
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 348
    .local v0, "account":Lorg/json/JSONObject;
    invoke-static {v0, v1}, Lcom/weirdvoice/backup/SipProfileJson;->restoreSipProfile(Lorg/json/JSONObject;Landroid/content/ContentResolver;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v0    # "account":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Lorg/json/JSONException;
    const-string v4, "SipProfileJson"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to parse item "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static restoreSipConfiguration(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 14
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "fileToRestore"    # Ljava/io/File;
    .param p2, "filePassword"    # Ljava/lang/String;

    .prologue
    .line 270
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v12

    if-nez v12, :cond_1

    .line 271
    :cond_0
    const/4 v12, 0x0

    .line 335
    :goto_0
    return v12

    .line 274
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 279
    .local v3, "contentBuf":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 280
    .local v6, "is":Ljava/io/InputStream;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v12

    if-nez v12, :cond_2

    .line 283
    :try_start_1
    const-string v12, "AES"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 284
    .local v2, "c":Ljavax/crypto/Cipher;
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const-string v13, "AES"

    invoke-direct {v8, v12, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 285
    .local v8, "k":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v12, 0x1

    invoke-virtual {v2, v12, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 286
    new-instance v7, Ljavax/crypto/CipherInputStream;

    invoke-direct {v7, v6, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    move-object v6, v7

    .line 296
    .end local v2    # "c":Ljavax/crypto/Cipher;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "k":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_1
    :try_start_2
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 297
    .local v5, "fr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 298
    .local v1, "buf":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-nez v9, :cond_4

    .line 301
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 308
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/InputStreamReader;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "line":Ljava/lang/String;
    :goto_3
    const/4 v0, 0x0

    .line 309
    .local v0, "accounts":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .line 311
    .local v11, "settings":Lorg/json/JSONObject;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 313
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 315
    .local v10, "mainJSONObject":Lorg/json/JSONObject;
    const-string v12, "accounts"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 317
    const-string v12, "settings"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v11

    .line 326
    .end local v10    # "mainJSONObject":Lorg/json/JSONObject;
    :goto_4
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 327
    invoke-static {p0, v0}, Lcom/weirdvoice/backup/SipProfileJson;->restoreSipAccounts(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 330
    :cond_3
    if-eqz v11, :cond_6

    .line 331
    invoke-static {p0, v11}, Lcom/weirdvoice/backup/SipProfileJson;->restoreSipSettings(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 332
    const/4 v12, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "accounts":Lorg/json/JSONArray;
    .end local v11    # "settings":Lorg/json/JSONObject;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 288
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_4
    const-string v12, "SipProfileJson"

    const-string v13, "NoSuchAlgorithmException :: "

    invoke-static {v12, v13, v4}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 302
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    .line 303
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v12, "SipProfileJson"

    const-string v13, "Error while restoring"

    invoke-static {v12, v13, v4}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 289
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    .line 290
    .local v4, "e":Ljavax/crypto/NoSuchPaddingException;
    :try_start_5
    const-string v12, "SipProfileJson"

    const-string v13, "NoSuchPaddingException :: "

    invoke-static {v12, v13, v4}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 304
    .end local v4    # "e":Ljavax/crypto/NoSuchPaddingException;
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    .line 305
    .local v4, "e":Ljava/io/IOException;
    const-string v12, "SipProfileJson"

    const-string v13, "Error while restoring"

    invoke-static {v12, v13, v4}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 291
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v4

    .line 292
    .local v4, "e":Ljava/security/InvalidKeyException;
    :try_start_6
    const-string v12, "SipProfileJson"

    const-string v13, "InvalidKeyException :: "

    invoke-static {v12, v13, v4}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 299
    .end local v4    # "e":Ljava/security/InvalidKeyException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/InputStreamReader;
    .restart local v9    # "line":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 319
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/InputStreamReader;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "line":Ljava/lang/String;
    .restart local v0    # "accounts":Lorg/json/JSONArray;
    .restart local v11    # "settings":Lorg/json/JSONObject;
    :catch_5
    move-exception v4

    .line 320
    .local v4, "e":Lorg/json/JSONException;
    const-string v12, "SipProfileJson"

    const-string v13, "Error while parsing saved file"

    invoke-static {v12, v13, v4}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 323
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 335
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private static restoreSipProfile(Lorg/json/JSONObject;Landroid/content/ContentResolver;)Z
    .locals 13
    .param p0, "jsonObj"    # Lorg/json/JSONObject;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v12, 0x0

    .line 227
    invoke-static {v12}, Lcom/weirdvoice/backup/SipProfileJson;->getSipProfileColumns(Z)Lcom/weirdvoice/backup/Columns;

    move-result-object v0

    .line 228
    .local v0, "cols":Lcom/weirdvoice/backup/Columns;
    invoke-virtual {v0, p0}, Lcom/weirdvoice/backup/Columns;->jsonToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v1

    .line 230
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v7, "id"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 231
    .local v8, "profileId":J
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 232
    sget-object v7, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v7, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 233
    .local v6, "insertedUri":Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 239
    .end local v6    # "insertedUri":Landroid/net/Uri;
    :cond_0
    new-instance v0, Lcom/weirdvoice/backup/Columns;

    .end local v0    # "cols":Lcom/weirdvoice/backup/Columns;
    sget-object v7, Lcom/weirdvoice/models/Filter;->FULL_PROJ:[Ljava/lang/String;

    sget-object v10, Lcom/weirdvoice/models/Filter;->FULL_PROJ_TYPES:[Ljava/lang/Class;

    invoke-direct {v0, v7, v10}, Lcom/weirdvoice/backup/Columns;-><init>([Ljava/lang/String;[Ljava/lang/Class;)V

    .line 241
    .restart local v0    # "cols":Lcom/weirdvoice/backup/Columns;
    :try_start_0
    const-string v7, "filters"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 242
    .local v4, "filtersObj":Lorg/json/JSONArray;
    const-string v7, "SipProfileJson"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "We have filters for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " > "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v5, v7, :cond_1

    .line 254
    .end local v4    # "filtersObj":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :goto_1
    return v12

    .line 244
    .restart local v4    # "filtersObj":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    :cond_1
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 246
    .local v3, "filterObj":Lorg/json/JSONObject;
    invoke-virtual {v0, v3}, Lcom/weirdvoice/backup/Columns;->jsonToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v1

    .line 247
    const-string v7, "account"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    sget-object v7, Lcom/weirdvoice/api/SipManager;->FILTER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v7, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 250
    .end local v3    # "filterObj":Lorg/json/JSONObject;
    .end local v4    # "filtersObj":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "SipProfileJson"

    const-string v10, "Error while restoring filters"

    invoke-static {v7, v10, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static restoreSipSettings(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "settingsObj"    # Lorg/json/JSONObject;

    .prologue
    .line 258
    new-instance v0, Lcom/weirdvoice/utils/PreferencesWrapper;

    invoke-direct {v0, p0}, Lcom/weirdvoice/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, "prefs":Lcom/weirdvoice/utils/PreferencesWrapper;
    invoke-virtual {v0, p1}, Lcom/weirdvoice/utils/PreferencesWrapper;->restoreSipSettings(Lorg/json/JSONObject;)V

    .line 260
    return-void
.end method

.method public static saveSipConfiguration(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "filePassword"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->getConfigFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 170
    .local v2, "dir":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 171
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 172
    .local v1, "d":Ljava/util/Date;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "backup_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 173
    const-string v6, "yy-MM-dd_kkmmss"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v4, "file":Ljava/io/File;
    const-string v5, "SipProfileJson"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Out dir "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 178
    .local v0, "configChain":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "accounts"

    invoke-static {p0}, Lcom/weirdvoice/backup/SipProfileJson;->serializeSipProfiles(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    :try_start_1
    const-string v5, "settings"

    invoke-static {p0}, Lcom/weirdvoice/backup/SipProfileJson;->serializeSipSettings(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    :goto_1
    const/4 v5, 0x1

    .line 218
    .end local v0    # "configChain":Lorg/json/JSONObject;
    .end local v1    # "d":Ljava/util/Date;
    .end local v4    # "file":Ljava/io/File;
    :goto_2
    return v5

    .line 179
    .restart local v0    # "configChain":Lorg/json/JSONObject;
    .restart local v1    # "d":Ljava/util/Date;
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 180
    .local v3, "e":Lorg/json/JSONException;
    const-string v5, "SipProfileJson"

    const-string v6, "Impossible to add profiles"

    invoke-static {v5, v6, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 184
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 185
    .restart local v3    # "e":Lorg/json/JSONException;
    const-string v5, "SipProfileJson"

    const-string v6, "Impossible to add profiles"

    invoke-static {v5, v6, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 218
    .end local v0    # "configChain":Lorg/json/JSONObject;
    .end local v1    # "d":Ljava/util/Date;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private static serializeBaseFilter(Lcom/weirdvoice/models/Filter;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "filter"    # Lcom/weirdvoice/models/Filter;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/weirdvoice/models/Filter;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 80
    .local v1, "cv":Landroid/content/ContentValues;
    new-instance v0, Lcom/weirdvoice/backup/Columns;

    sget-object v2, Lcom/weirdvoice/models/Filter;->FULL_PROJ:[Ljava/lang/String;

    sget-object v3, Lcom/weirdvoice/models/Filter;->FULL_PROJ_TYPES:[Ljava/lang/Class;

    invoke-direct {v0, v2, v3}, Lcom/weirdvoice/backup/Columns;-><init>([Ljava/lang/String;[Ljava/lang/Class;)V

    .line 81
    .local v0, "cols":Lcom/weirdvoice/backup/Columns;
    invoke-virtual {v0, v1}, Lcom/weirdvoice/backup/Columns;->contentValueToJSON(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method private static serializeBaseSipProfile(Lcom/weirdvoice/api/SipProfile;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "profile"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/weirdvoice/api/SipProfile;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 73
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/weirdvoice/backup/SipProfileJson;->getSipProfileColumns(Z)Lcom/weirdvoice/backup/Columns;

    move-result-object v0

    .line 74
    .local v0, "cols":Lcom/weirdvoice/backup/Columns;
    invoke-virtual {v0, v1}, Lcom/weirdvoice/backup/Columns;->contentValueToJSON(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public static serializeSipProfile(Landroid/content/Context;Lcom/weirdvoice/api/SipProfile;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 85
    invoke-static {p1}, Lcom/weirdvoice/backup/SipProfileJson;->serializeBaseSipProfile(Lcom/weirdvoice/api/SipProfile;)Lorg/json/JSONObject;

    move-result-object v5

    .line 86
    .local v5, "jsonProfile":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 88
    .local v4, "jsonFilters":Lorg/json/JSONArray;
    iget-wide v8, p1, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {p0, v8, v9}, Lcom/weirdvoice/models/Filter;->getFiltersCursorForAccount(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v0

    .line 89
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 90
    .local v6, "numRows":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 91
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 103
    :try_start_0
    const-string v7, "filters"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :goto_1
    return-object v5

    .line 92
    :cond_0
    new-instance v2, Lcom/weirdvoice/models/Filter;

    invoke-direct {v2, v0}, Lcom/weirdvoice/models/Filter;-><init>(Landroid/database/Cursor;)V

    .line 94
    .local v2, "f":Lcom/weirdvoice/models/Filter;
    :try_start_1
    invoke-static {v2}, Lcom/weirdvoice/backup/SipProfileJson;->serializeBaseFilter(Lcom/weirdvoice/models/Filter;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Lorg/json/JSONException;
    const-string v7, "SipProfileJson"

    const-string v8, "Impossible to add fitler"

    invoke-static {v7, v8, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 104
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "f":Lcom/weirdvoice/models/Filter;
    :catch_1
    move-exception v1

    .line 105
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string v7, "SipProfileJson"

    const-string v8, "Impossible to add fitlers"

    invoke-static {v7, v8, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static serializeSipProfiles(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 15
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 113
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 114
    .local v12, "jsonSipProfiles":Lorg/json/JSONArray;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    .line 115
    sget-object v2, Lcom/weirdvoice/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 114
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 116
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 118
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getAvailableCallHandlers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v8

    .line 138
    .local v8, "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    return-object v12

    .line 119
    .end local v8    # "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    new-instance v6, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v6, v7}, Lcom/weirdvoice/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 120
    .local v6, "account":Lcom/weirdvoice/api/SipProfile;
    invoke-static {p0, v6}, Lcom/weirdvoice/backup/SipProfileJson;->serializeSipProfile(Landroid/content/Context;Lcom/weirdvoice/api/SipProfile;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 122
    .local v13, "p":Lorg/json/JSONObject;
    :try_start_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v9

    .line 124
    .local v9, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v0, "SipProfileJson"

    const-string v1, "Impossible to add profile"

    invoke-static {v0, v1, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 128
    .end local v6    # "account":Lcom/weirdvoice/api/SipProfile;
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v13    # "p":Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    .line 129
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "SipProfileJson"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 130
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 131
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 132
    throw v0

    .line 138
    .restart local v8    # "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 140
    .local v14, "packageName":Ljava/lang/String;
    invoke-static {p0, v14}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 141
    .local v10, "externalAccountId":Ljava/lang/Long;
    new-instance v11, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v11}, Lcom/weirdvoice/api/SipProfile;-><init>()V

    .line 142
    .local v11, "gsmProfile":Lcom/weirdvoice/api/SipProfile;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 143
    invoke-static {p0, v11}, Lcom/weirdvoice/backup/SipProfileJson;->serializeSipProfile(Landroid/content/Context;Lcom/weirdvoice/api/SipProfile;)Lorg/json/JSONObject;

    move-result-object v13

    .line 145
    .restart local v13    # "p":Lorg/json/JSONObject;
    :try_start_5
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v12, v1, v13}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 146
    :catch_2
    move-exception v9

    .line 147
    .local v9, "e":Lorg/json/JSONException;
    const-string v1, "SipProfileJson"

    const-string v2, "Impossible to add profile"

    invoke-static {v1, v2, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static serializeSipSettings(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 155
    new-instance v0, Lcom/weirdvoice/utils/PreferencesWrapper;

    invoke-direct {v0, p0}, Lcom/weirdvoice/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "prefs":Lcom/weirdvoice/utils/PreferencesWrapper;
    invoke-virtual {v0}, Lcom/weirdvoice/utils/PreferencesWrapper;->serializeSipSettings()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method
