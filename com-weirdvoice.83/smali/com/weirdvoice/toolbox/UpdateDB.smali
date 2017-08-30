.class public Lcom/weirdvoice/toolbox/UpdateDB;
.super Ljava/lang/Object;
.source "UpdateDB.java"


# static fields
.field private static final CONTENT_URI_S:Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String; = "UpdateDB"


# instance fields
.field private final myContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/toolbox/UpdateDB;->CONTENT_URI_S:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/weirdvoice/toolbox/UpdateDB;->myContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public getCountryAreaCode([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "countryAreaCode"    # [[Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 44
    if-nez p1, :cond_1

    .line 45
    const-string v0, "-1"

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    const-string v0, "-1"

    .line 48
    .local v0, "ctryAreaCode":Ljava/lang/String;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 49
    .local v1, "element":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v1, v6

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    goto :goto_0

    .line 48
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getCountryFlag([[Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "countries"    # [[Ljava/lang/String;
    .param p2, "countryAreaCode"    # [[Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, ""

    .line 107
    .local v0, "countryFlag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "flag_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/weirdvoice/toolbox/UpdateDB;->getCountryID([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/weirdvoice/toolbox/UpdateDB;->getCountryISO([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "48"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method public getCountryID([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "countryAreaCode"    # [[Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 64
    if-nez p1, :cond_1

    .line 65
    const-string v0, "-1"

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    const-string v0, "-1"

    .line 68
    .local v0, "countryId":Ljava/lang/String;
    array-length v4, p1

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, p1, v2

    .line 69
    .local v1, "element":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    goto :goto_0

    .line 68
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getCountryISO([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "countries"    # [[Ljava/lang/String;
    .param p2, "countryId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 84
    if-nez p1, :cond_1

    .line 85
    const-string v1, ""

    .line 94
    :cond_0
    :goto_0
    return-object v1

    .line 87
    :cond_1
    const-string v1, ""

    .line 88
    .local v1, "countryISO":Ljava/lang/String;
    array-length v4, p1

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, p1, v2

    .line 89
    .local v0, "countrie":[Ljava/lang/String;
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 90
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    goto :goto_0

    .line 88
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getDataFromCursor(Landroid/database/Cursor;[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columns"    # [Ljava/lang/String;

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 164
    .local v1, "allRows":[[Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 165
    .local v5, "numRows":I
    array-length v4, p2

    .line 166
    .local v4, "numCol":I
    filled-new-array {v5, v4}, [I

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    .line 168
    if-lez v5, :cond_0

    .line 169
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_2

    .line 177
    .end local v2    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 178
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 181
    .end local v4    # "numCol":I
    .end local v5    # "numRows":I
    :cond_1
    :goto_1
    return-object v1

    .line 171
    .restart local v2    # "i":I
    .restart local v4    # "numCol":I
    .restart local v5    # "numRows":I
    :cond_2
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-lt v3, v4, :cond_3

    .line 173
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_3
    aget-object v6, v1, v2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 180
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "numCol":I
    .end local v5    # "numRows":I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public getFieldValue(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .param p6, "position"    # I

    .prologue
    .line 195
    const-string v7, "0"

    .line 197
    .local v7, "value":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/weirdvoice/toolbox/UpdateDB;->CONTENT_URI_S:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 198
    .local v1, "tableUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/weirdvoice/toolbox/UpdateDB;->myContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 200
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6, p6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 203
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "tableUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v7

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getNbElements(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v7, 0x0

    .line 217
    .local v7, "nbEl":I
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/weirdvoice/toolbox/UpdateDB;->CONTENT_URI_S:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 218
    .local v1, "tableUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/weirdvoice/toolbox/UpdateDB;->myContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v1    # "tableUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v7

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getValuesForOneRow([Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "data"    # [Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 145
    .local v0, "args":Landroid/content/ContentValues;
    array-length v2, p1

    .line 148
    .local v2, "numCol":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 151
    :goto_1
    return-object v0

    .line 149
    :cond_0
    :try_start_0
    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public updateModifTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "now"    # Ljava/lang/String;
    .param p3, "lastUpdate"    # Ljava/lang/String;

    .prologue
    .line 120
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/weirdvoice/toolbox/UpdateDB;->CONTENT_URI_S:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/modifTable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 122
    .local v0, "modifTableUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/weirdvoice/toolbox/UpdateDB;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 124
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lastUpdate"

    aput-object v4, v2, v3

    .line 125
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 123
    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/toolbox/UpdateDB;->getValuesForOneRow([Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 126
    const-string v3, "tableName =?"

    .line 127
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 122
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/weirdvoice/toolbox/UpdateDB;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 130
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tableName"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "lastUpdate"

    aput-object v4, v2, v3

    .line 131
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 129
    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/toolbox/UpdateDB;->getValuesForOneRow([Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 128
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 132
    :cond_0
    const-string v1, "UpdateDB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastUpdate date for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " table updated in modifTable table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "modifTableUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    goto :goto_0
.end method
