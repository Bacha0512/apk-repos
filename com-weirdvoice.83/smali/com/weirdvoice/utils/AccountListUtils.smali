.class public Lcom/weirdvoice/utils/AccountListUtils;
.super Ljava/lang/Object;
.source "AccountListUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "AccountListUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountDisplay(Landroid/content/Context;J)Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 51
    new-instance v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;

    invoke-direct {v8}, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;-><init>()V

    .line 52
    .local v8, "accountDisplay":Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    const v2, 0x7f0c000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 54
    .local v14, "resources":Landroid/content/res/Resources;
    const v2, 0x7f080009

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 55
    const v2, 0x7f0202bc

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 56
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    .line 59
    const/4 v9, 0x0

    .line 60
    .local v9, "accountInfo":Lcom/weirdvoice/api/SipProfileState;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v8

    .line 62
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 63
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 62
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 64
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 66
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 67
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 68
    new-instance v10, Lcom/weirdvoice/api/SipProfileState;

    invoke-direct {v10, v11}, Lcom/weirdvoice/api/SipProfileState;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v9    # "accountInfo":Lcom/weirdvoice/api/SipProfileState;
    .local v10, "accountInfo":Lcom/weirdvoice/api/SipProfileState;
    move-object v9, v10

    .line 73
    .end local v10    # "accountInfo":Lcom/weirdvoice/api/SipProfileState;
    .restart local v9    # "accountInfo":Lcom/weirdvoice/api/SipProfileState;
    :cond_2
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 80
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_1
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipProfileState;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v9}, Lcom/weirdvoice/api/SipProfileState;->getAddedStatus()I

    move-result v2

    if-ltz v2, :cond_a

    .line 83
    const v2, 0x7f0c000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    .line 84
    const v2, 0x7f08000a

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 85
    const v2, 0x7f0202bc

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 86
    invoke-virtual {v9}, Lcom/weirdvoice/api/SipProfileState;->getRegUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    const v2, 0x7f08000b

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 89
    const v2, 0x7f0202ba

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 90
    const v2, 0x7f0c000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    .line 91
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    goto :goto_0

    .line 70
    .restart local v11    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 71
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "AccountListUtils"

    const-string v3, "Error on looping over sip profiles states"

    invoke-static {v2, v3, v12}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 76
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 77
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v2, "AccountListUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed account id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v11    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 73
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 74
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 92
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_4
    invoke-virtual {v9}, Lcom/weirdvoice/api/SipProfileState;->isAddedToStack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v9}, Lcom/weirdvoice/api/SipProfileState;->getStatusText()Ljava/lang/String;

    move-result-object v13

    .line 94
    .local v13, "pjStat":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/weirdvoice/api/SipProfileState;->getStatusCode()I

    move-result v15

    .line 95
    .local v15, "statusCode":I
    const/16 v2, 0xc8

    if-ne v15, v2, :cond_6

    .line 98
    invoke-virtual {v9}, Lcom/weirdvoice/api/SipProfileState;->getExpires()I

    move-result v2

    if-lez v2, :cond_5

    .line 100
    const v2, 0x7f08000b

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 101
    const v2, 0x7f0202ba

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 102
    const v2, 0x7f0c000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    .line 103
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    goto/16 :goto_0

    .line 106
    :cond_5
    const v2, 0x7f08000a

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 107
    const v2, 0x7f0202bc

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 108
    const v2, 0x7f0c000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 110
    :cond_6
    const/4 v2, -0x1

    if-eq v15, v2, :cond_9

    .line 111
    const/16 v2, 0xb7

    if-eq v15, v2, :cond_7

    const/16 v2, 0x64

    if-ne v15, v2, :cond_8

    .line 113
    :cond_7
    const v2, 0x7f08000a

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 114
    const v2, 0x7f0202bc

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 115
    const v2, 0x7f0c000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 119
    :cond_8
    const v2, 0x7f08000c

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 120
    const v2, 0x7f0202bb

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0c000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 125
    :cond_9
    const v2, 0x7f080009

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 126
    const v2, 0x7f0202bc

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 127
    const v2, 0x7f0c000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    .end local v13    # "pjStat":Ljava/lang/String;
    .end local v15    # "statusCode":I
    :cond_a
    invoke-virtual {v9}, Lcom/weirdvoice/api/SipProfileState;->isAddedToStack()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 132
    const v2, 0x7f0c0010

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    .line 133
    const v2, 0x7f08000c

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    goto/16 :goto_0

    .line 135
    :cond_b
    const v2, 0x7f080009

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    .line 136
    const v2, 0x7f0202bc

    iput v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    .line 137
    const v2, 0x7f0c000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    goto/16 :goto_0
.end method
