.class public Lcom/weirdvoice/widgets/AccountWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "AccountWidgetProvider.java"


# static fields
.field static THIS_APPWIDGET:Landroid/content/ComponentName; = null

.field private static final THIS_FILE:Ljava/lang/String; = "Widget provider"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/weirdvoice/widgets/AccountWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 115
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 116
    const v4, 0x7f030066

    .line 115
    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 119
    .local v17, "views":Landroid/widget/RemoteViews;
    invoke-static/range {p0 .. p1}, Lcom/weirdvoice/widgets/AccountWidgetConfigure;->getAccountForWidget(Landroid/content/Context;I)J

    move-result-wide v10

    .line 120
    .local v10, "accId":J
    const-string v3, "Widget provider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updating wiget "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-wide/16 v4, -0x1

    cmp-long v3, v10, v4

    if-eqz v3, :cond_4

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 123
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v3, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 124
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 125
    const-string v6, "wizard"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 126
    const-string v6, "active"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 127
    const-string v6, "id"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 128
    const-string v6, "display_name"

    aput-object v6, v4, v5

    .line 129
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 123
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 131
    .local v13, "c":Landroid/database/Cursor;
    if-eqz v13, :cond_4

    .line 133
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 134
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v8, "acc":Landroid/content/ContentValues;
    invoke-static {v13, v8}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 138
    const v3, 0x7f0b0153

    const-string v4, "wizard"

    invoke-virtual {v8, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardIconRes(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 139
    const-string v3, "active"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const/4 v12, 0x1

    .line 141
    .local v12, "active":Z
    :goto_0
    const v4, 0x7f0b0156

    if-eqz v12, :cond_6

    const v3, 0x7f020037

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 144
    const v3, 0x7f0b0154

    const-string v4, "display_name"

    invoke-virtual {v8, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 145
    const v4, 0x7f0b0152

    if-eqz v12, :cond_7

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11, v3}, Lcom/weirdvoice/widgets/AccountWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;JZ)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 148
    const/16 v16, 0x0

    .line 149
    .local v16, "showStatus":Z
    if-eqz v12, :cond_2

    .line 150
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/weirdvoice/utils/AccountListUtils;->getAccountDisplay(Landroid/content/Context;J)Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;

    move-result-object v9

    .line 151
    .local v9, "accountStatusDisplay":Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    const/4 v14, 0x0

    .line 153
    .local v14, "drawable":Ljava/lang/Integer;
    iget v3, v9, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    const v4, 0x7f0202bb

    if-ne v3, v4, :cond_8

    .line 154
    const v3, 0x7f020038

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 155
    const/16 v16, 0x1

    .line 159
    :cond_0
    :goto_3
    if-eqz v16, :cond_1

    .line 160
    const v3, 0x7f0b0155

    iget-object v4, v9, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 162
    :cond_1
    if-eqz v14, :cond_2

    .line 163
    const v3, 0x7f0b0156

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 167
    .end local v9    # "accountStatusDisplay":Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    .end local v14    # "drawable":Ljava/lang/Integer;
    :cond_2
    const v4, 0x7f0b0155

    if-eqz v16, :cond_9

    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v8    # "acc":Landroid/content/ContentValues;
    .end local v12    # "active":Z
    .end local v16    # "showStatus":Z
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 180
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v13    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_5
    return-object v17

    .line 139
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v8    # "acc":Landroid/content/ContentValues;
    .restart local v13    # "c":Landroid/database/Cursor;
    :cond_5
    const/4 v12, 0x0

    goto :goto_0

    .line 141
    .restart local v12    # "active":Z
    :cond_6
    const v3, 0x7f020036

    goto :goto_1

    .line 145
    :cond_7
    const/4 v3, 0x1

    goto :goto_2

    .line 156
    .restart local v9    # "accountStatusDisplay":Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    .restart local v14    # "drawable":Ljava/lang/Integer;
    .restart local v16    # "showStatus":Z
    :cond_8
    :try_start_1
    iget v3, v9, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    const v4, 0x7f0202bc

    if-ne v3, v4, :cond_0

    .line 157
    const v3, 0x7f020039

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    goto :goto_3

    .line 167
    .end local v9    # "accountStatusDisplay":Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    .end local v14    # "drawable":Ljava/lang/Integer;
    :cond_9
    const/16 v3, 0x8

    goto :goto_4

    .line 170
    .end local v8    # "acc":Landroid/content/ContentValues;
    .end local v12    # "active":Z
    .end local v16    # "showStatus":Z
    :catch_0
    move-exception v15

    .line 171
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Widget provider"

    const-string v4, "Something went wrong while retrieving the account"

    invoke-static {v3, v4, v15}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 172
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 173
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 174
    throw v3
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;JZ)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accId"    # J
    .param p3, "activate"    # Z

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.weirdvoice.accounts.activate"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "launchIntent":Landroid/content/Intent;
    const-string v2, "id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 194
    const-string v2, "active"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    const-string v2, "Widget provider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Create intent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    long-to-int v2, p1

    .line 197
    const/high16 v3, 0x8000000

    .line 196
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 198
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 103
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    sget-object v4, Lcom/weirdvoice/widgets/AccountWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    if-nez v4, :cond_0

    .line 104
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/weirdvoice/widgets/AccountWidgetProvider;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v4, Lcom/weirdvoice/widgets/AccountWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 106
    :cond_0
    sget-object v4, Lcom/weirdvoice/widgets/AccountWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 107
    .local v0, "appWidgetIds":[I
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 111
    return-void

    .line 107
    :cond_1
    aget v3, v0, v4

    .line 108
    .local v3, "widgetId":I
    invoke-static {p0, v3}, Lcom/weirdvoice/widgets/AccountWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 109
    .local v2, "view":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 64
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 67
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 68
    return-void

    .line 64
    :cond_0
    aget v0, p2, v1

    .line 65
    .local v0, "widgetId":I
    invoke-static {p1, v0}, Lcom/weirdvoice/widgets/AccountWidgetConfigure;->deleteWidget(Landroid/content/Context;I)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "act":Ljava/lang/String;
    const-string v2, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 81
    .local v1, "appWidgetId":I
    if-eqz v1, :cond_0

    .line 82
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v4

    invoke-virtual {p0, p1, v2}, Lcom/weirdvoice/widgets/AccountWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 92
    .end local v1    # "appWidgetId":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 94
    return-void

    .line 84
    :cond_1
    const-string v2, "com.weirdvoice.service.REGISTRATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.weirdvoice.service.ACCOUNT_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    :cond_2
    invoke-static {p1}, Lcom/weirdvoice/widgets/AccountWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 56
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 60
    return-void

    .line 56
    :cond_0
    aget v1, p3, v2

    .line 57
    .local v1, "widgetId":I
    invoke-static {p1, v1}, Lcom/weirdvoice/widgets/AccountWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/widget/RemoteViews;
    invoke-virtual {p2, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
