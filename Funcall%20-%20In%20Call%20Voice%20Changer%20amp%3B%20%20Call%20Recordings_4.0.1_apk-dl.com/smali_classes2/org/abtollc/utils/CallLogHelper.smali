.class public Lorg/abtollc/utils/CallLogHelper;
.super Ljava/lang/Object;
.source "CallLogHelper.java"


# static fields
.field private static final ACTION_ANNOUNCE_SIP_CALLLOG:Ljava/lang/String; = "de.ub0r.android.callmeter.SAVE_SIPCALL"

.field private static final EXTRA_CALL_LOG_URI:Ljava/lang/String; = "uri"

.field public static final EXTRA_SIP_PROVIDER:Ljava/lang/String; = "provider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallLog(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "extraValues"    # Landroid/content/ContentValues;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 30
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 32
    .local v3, "result":Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v4, "de.ub0r.android.callmeter.SAVE_SIPCALL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v4, "uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v4, "provider"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "provider":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 38
    const-string v4, "provider"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    .end local v0    # "broadcast":Landroid/content/Intent;
    .end local v2    # "provider":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static logValuesForCall(Landroid/content/Context;Lorg/abtollc/api/SipCallSession;J)Landroid/content/ContentValues;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lorg/abtollc/api/SipCallSession;
    .param p2, "callStart"    # J

    .prologue
    .line 46
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "remoteContact":Ljava/lang/String;
    const-string v9, "number"

    invoke-virtual {v1, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v9, "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?sip(?:s)?:([^@]*@[^>]*)(?:>)?"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 52
    .local v6, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 53
    .local v3, "m":Ljava/util/regex/Matcher;
    move-object v5, v7

    .line 54
    .local v5, "number":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 55
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 58
    :cond_0
    const-string v9, "date"

    const-wide/16 v10, 0x0

    cmp-long v10, p2, v10

    if-lez v10, :cond_5

    move-wide/from16 v10, p2

    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    const/4 v8, 0x2

    .line 60
    .local v8, "type":I
    const/4 v4, 0x0

    .line 61
    .local v4, "nonAcknowledge":I
    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 62
    const/4 v8, 0x3

    .line 63
    const/4 v4, 0x1

    .line 64
    const-string v9, "CallLogHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Last status code is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->getLastStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-wide/16 v10, 0x0

    cmp-long v9, p2, v10

    if-lez v9, :cond_6

    .line 67
    const/4 v8, 0x1

    .line 68
    const/4 v4, 0x0

    .line 77
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->getAccId()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lorg/abtollc/api/SipProfile;->getProfileIdFromDbSipUri(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {p0, v10, v11, v5}, Lorg/abtollc/models/Filter;->isAutoAnswerNumber(Landroid/content/Context;JLjava/lang/String;)I

    move-result v2

    .line 78
    .local v2, "hasBeenAutoanswered":I
    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->getLastStatusCode()I

    move-result v9

    if-ne v2, v9, :cond_2

    .line 79
    const/4 v4, 0x0

    .line 81
    :cond_2
    const-string v9, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v9, "new"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string v9, "duration"

    const-wide/16 v10, 0x0

    cmp-long v10, p2, v10

    if-lez v10, :cond_7

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, p2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    :goto_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 83
    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    const-string v9, "account_id"

    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->getAccId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v9, "status_code"

    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->getLastStatusCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v9, "status_text"

    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->getLastStatusComment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->getRecordFile()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->getRecordFile()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 89
    const-string v9, "call_record_fail"

    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->getRecordFile()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_3
    invoke-static {p0, v7}, Lorg/abtollc/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lorg/abtollc/models/CallerInfo;

    move-result-object v0

    .line 93
    .local v0, "callerInfo":Lorg/abtollc/models/CallerInfo;
    if-eqz v0, :cond_4

    .line 94
    const-string v9, "name"

    iget-object v10, v0, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v9, "numberlabel"

    iget-object v10, v0, Lorg/abtollc/models/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v9, "numbertype"

    iget v10, v0, Lorg/abtollc/models/CallerInfo;->numberType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    :cond_4
    return-object v1

    .line 58
    .end local v0    # "callerInfo":Lorg/abtollc/models/CallerInfo;
    .end local v2    # "hasBeenAutoanswered":I
    .end local v4    # "nonAcknowledge":I
    .end local v8    # "type":I
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    goto/16 :goto_0

    .line 69
    .restart local v4    # "nonAcknowledge":I
    .restart local v8    # "type":I
    :cond_6
    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->getLastStatusCode()I

    move-result v9

    const/16 v10, 0x25b

    if-ne v9, v10, :cond_1

    .line 71
    const/4 v8, 0x1

    .line 72
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 84
    .restart local v2    # "hasBeenAutoanswered":I
    :cond_7
    const-wide/16 v10, 0x0

    goto :goto_2
.end method
