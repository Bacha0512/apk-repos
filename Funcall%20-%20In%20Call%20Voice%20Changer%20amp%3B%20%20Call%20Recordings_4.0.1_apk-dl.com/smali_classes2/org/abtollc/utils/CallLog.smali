.class public Lorg/abtollc/utils/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# instance fields
.field private _id:I

.field private accountId:Ljava/lang/String;

.field private callRecord:Ljava/lang/String;

.field private date:Ljava/util/Date;

.field private duration:I

.field private isIncoming:Z

.field private localHangUp:Z

.field private number:Ljava/lang/String;

.field private statusCode:I

.field private statusText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/Date;ILjava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # I
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "duration"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "isIncoming"    # Z
    .param p6, "localHangUp"    # Z
    .param p7, "statusCode"    # I
    .param p8, "statusText"    # Ljava/lang/String;
    .param p9, "callRecord"    # Ljava/lang/String;
    .param p10, "accountId"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/abtollc/utils/CallLog;->_id:I

    .line 46
    iput-object p2, p0, Lorg/abtollc/utils/CallLog;->date:Ljava/util/Date;

    .line 47
    iput p3, p0, Lorg/abtollc/utils/CallLog;->duration:I

    .line 48
    iput-object p4, p0, Lorg/abtollc/utils/CallLog;->number:Ljava/lang/String;

    .line 49
    iput-boolean p5, p0, Lorg/abtollc/utils/CallLog;->isIncoming:Z

    .line 50
    iput-boolean p6, p0, Lorg/abtollc/utils/CallLog;->localHangUp:Z

    .line 51
    iput p7, p0, Lorg/abtollc/utils/CallLog;->statusCode:I

    .line 52
    iput-object p8, p0, Lorg/abtollc/utils/CallLog;->statusText:Ljava/lang/String;

    .line 53
    iput-object p9, p0, Lorg/abtollc/utils/CallLog;->callRecord:Ljava/lang/String;

    .line 54
    iput-object p10, p0, Lorg/abtollc/utils/CallLog;->accountId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 8
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v3, "_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 69
    .local v0, "intValue":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/abtollc/utils/CallLog;->_id:I

    .line 72
    :cond_0
    const-string v3, "date"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 73
    .local v1, "longValue":Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 74
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lorg/abtollc/utils/CallLog;->date:Ljava/util/Date;

    .line 76
    :cond_1
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/abtollc/utils/CallLog;->duration:I

    .line 80
    :cond_2
    const-string v3, "number"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "strValue":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 82
    iput-object v2, p0, Lorg/abtollc/utils/CallLog;->number:Ljava/lang/String;

    .line 84
    :cond_3
    const-string v3, "type"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_b

    :cond_4
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lorg/abtollc/utils/CallLog;->isIncoming:Z

    .line 88
    :cond_5
    const-string v3, "is_local_hangup"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_6

    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_c

    :goto_1
    iput-boolean v5, p0, Lorg/abtollc/utils/CallLog;->localHangUp:Z

    .line 92
    :cond_6
    const-string v3, "status_code"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_7

    .line 94
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/abtollc/utils/CallLog;->statusCode:I

    .line 96
    :cond_7
    const-string v3, "status_text"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_8

    .line 98
    iput-object v2, p0, Lorg/abtollc/utils/CallLog;->statusText:Ljava/lang/String;

    .line 100
    :cond_8
    const-string v3, "call_record_fail"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_9

    .line 102
    iput-object v2, p0, Lorg/abtollc/utils/CallLog;->callRecord:Ljava/lang/String;

    .line 104
    :cond_9
    const-string v3, "account_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    if-eqz v0, :cond_a

    .line 106
    iput-object v2, p0, Lorg/abtollc/utils/CallLog;->accountId:Ljava/lang/String;

    .line 107
    :cond_a
    return-void

    :cond_b
    move v3, v4

    .line 86
    goto :goto_0

    :cond_c
    move v5, v4

    .line 90
    goto :goto_1
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/abtollc/utils/CallLog;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallRecord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/abtollc/utils/CallLog;->callRecord:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/abtollc/utils/CallLog;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/abtollc/utils/CallLog;->duration:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/abtollc/utils/CallLog;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/abtollc/utils/CallLog;->statusCode:I

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/abtollc/utils/CallLog;->statusText:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/abtollc/utils/CallLog;->_id:I

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/abtollc/utils/CallLog;->isIncoming:Z

    return v0
.end method

.method public isLocalHangUp()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/abtollc/utils/CallLog;->localHangUp:Z

    return v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/abtollc/utils/CallLog;->accountId:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setCallRecord(Ljava/lang/String;)V
    .locals 0
    .param p1, "callRecord"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lorg/abtollc/utils/CallLog;->callRecord:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/abtollc/utils/CallLog;->date:Ljava/util/Date;

    .line 135
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 148
    iput p1, p0, Lorg/abtollc/utils/CallLog;->duration:I

    .line 149
    return-void
.end method

.method public setIncoming(Z)V
    .locals 0
    .param p1, "isIncoming"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lorg/abtollc/utils/CallLog;->isIncoming:Z

    .line 177
    return-void
.end method

.method public setLocalHangUp(Z)V
    .locals 0
    .param p1, "localHangUp"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lorg/abtollc/utils/CallLog;->localHangUp:Z

    .line 191
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lorg/abtollc/utils/CallLog;->number:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 204
    iput p1, p0, Lorg/abtollc/utils/CallLog;->statusCode:I

    .line 205
    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusText"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lorg/abtollc/utils/CallLog;->statusText:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .param p1, "_id"    # I

    .prologue
    .line 120
    iput p1, p0, Lorg/abtollc/utils/CallLog;->_id:I

    .line 121
    return-void
.end method
