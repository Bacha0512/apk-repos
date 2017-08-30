.class public Lcom/weirdvoice/utils/CallLogHelper;
.super Ljava/lang/Object;
.source "CallLogHelper.java"


# static fields
.field private static final ACTION_ANNOUNCE_SIP_CALLLOG:Ljava/lang/String; = "de.ub0r.android.callmeter.SAVE_SIPCALL"

.field private static final EXTRA_CALL_LOG_URI:Ljava/lang/String; = "uri"

.field public static final EXTRA_SIP_PROVIDER:Ljava/lang/String; = "provider"

.field private static final THIS_FILE:Ljava/lang/String; = "CallLogHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallLog(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "extraValues"    # Landroid/content/ContentValues;

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 51
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 53
    .local v4, "result":Landroid/net/Uri;
    :try_start_0
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 58
    :goto_0
    if-eqz v4, :cond_1

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v5, "de.ub0r.android.callmeter.SAVE_SIPCALL"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v5, "uri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v5, "provider"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "provider":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 64
    const-string v5, "provider"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    .end local v0    # "broadcast":Landroid/content/Intent;
    .end local v3    # "provider":Ljava/lang/String;
    :cond_1
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "CallLogHelper"

    const-string v6, "Cannot insert call log entry. Probably not a phone"

    invoke-static {v5, v6, v2}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logValuesForCall(Landroid/content/Context;Lcom/weirdvoice/api/SipCallSession;J)Landroid/content/ContentValues;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/weirdvoice/api/SipCallSession;
    .param p2, "callStart"    # J

    .prologue
    .line 72
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "remoteContact":Ljava/lang/String;
    const-string v9, "number"

    invoke-virtual {v1, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v9, "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?sip(?:s)?:([^@]*@[^>]*)(?:>)?"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 78
    .local v6, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 79
    .local v3, "m":Ljava/util/regex/Matcher;
    move-object v5, v7

    .line 80
    .local v5, "number":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 81
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 84
    :cond_0
    const-string v9, "date"

    const-wide/16 v10, 0x0

    cmp-long v10, p2, v10

    if-lez v10, :cond_4

    move-wide/from16 v10, p2

    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    const/4 v8, 0x2

    .line 86
    .local v8, "type":I
    const/4 v4, 0x0

    .line 87
    .local v4, "nonAcknowledge":I
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 88
    const/4 v8, 0x3

    .line 89
    const/4 v4, 0x1

    .line 90
    const-wide/16 v10, 0x0

    cmp-long v9, p2, v10

    if-lez v9, :cond_5

    .line 92
    const/4 v8, 0x1

    .line 93
    const/4 v4, 0x0

    .line 104
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getAccId()J

    move-result-wide v10

    const/4 v9, 0x0

    invoke-static {p0, v10, v11, v5, v9}, Lcom/weirdvoice/models/Filter;->isAutoAnswerNumber(Landroid/content/Context;JLjava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 105
    .local v2, "hasBeenAutoanswered":I
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getLastStatusCode()I

    move-result v9

    if-ne v2, v9, :cond_2

    .line 106
    const/4 v4, 0x0

    .line 108
    :cond_2
    const-string v9, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v9, "new"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v9, "duration"

    .line 111
    const-wide/16 v10, 0x0

    cmp-long v10, p2, v10

    if-lez v10, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, p2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    :goto_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 110
    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    const-string v9, "account_id"

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getAccId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    const-string v9, "status_code"

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getLastStatusCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v9, "status_text"

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getLastStatusComment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p0, v7}, Lcom/weirdvoice/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;

    move-result-object v0

    .line 117
    .local v0, "callerInfo":Lcom/weirdvoice/models/CallerInfo;
    if-eqz v0, :cond_3

    .line 118
    const-string v9, "name"

    iget-object v10, v0, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v9, "numberlabel"

    iget-object v10, v0, Lcom/weirdvoice/models/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v9, "numbertype"

    iget v10, v0, Lcom/weirdvoice/models/CallerInfo;->numberType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    :cond_3
    return-object v1

    .line 84
    .end local v0    # "callerInfo":Lcom/weirdvoice/models/CallerInfo;
    .end local v2    # "hasBeenAutoanswered":I
    .end local v4    # "nonAcknowledge":I
    .end local v8    # "type":I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    goto/16 :goto_0

    .line 94
    .restart local v4    # "nonAcknowledge":I
    .restart local v8    # "type":I
    :cond_5
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getLastStatusCode()I

    move-result v9

    const/16 v10, 0x25b

    if-eq v9, v10, :cond_6

    .line 95
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getLastStatusCode()I

    move-result v9

    const/16 v10, 0x1e6

    if-eq v9, v10, :cond_6

    .line 96
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getLastReasonCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_1

    .line 98
    :cond_6
    const/4 v8, 0x1

    .line 99
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 111
    .restart local v2    # "hasBeenAutoanswered":I
    :cond_7
    const-wide/16 v10, 0x0

    goto :goto_2
.end method
