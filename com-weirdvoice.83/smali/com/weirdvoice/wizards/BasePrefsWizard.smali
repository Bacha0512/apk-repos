.class public Lcom/weirdvoice/wizards/BasePrefsWizard;
.super Lcom/weirdvoice/ui/prefs/GenericPrefs;
.source "BasePrefsWizard.java"


# static fields
.field private static final CHOOSE_WIZARD:I = 0x0

.field public static final DELETE_MENU:I = 0x5

.field public static final FILTERS_MENU:I = 0x4

.field private static final FINAL_ACTIVITY_CODE:I = 0x1

.field private static final MODIFY_FILTERS:I = 0x1

.field public static final SAVE_MENU:I = 0x2

.field private static final THIS_FILE:Ljava/lang/String; = "Base Prefs wizard"

.field public static final TRANSFORM_MENU:I = 0x3

.field private static final WIZARD_PREF_NAME:Ljava/lang/String; = "Wizard"


# instance fields
.field protected account:Lcom/weirdvoice/api/SipProfile;

.field private currentActivityCode:I

.field private isResumed:Z

.field private saveButton:Landroid/widget/Button;

.field private wizard:Lcom/weirdvoice/wizards/WizardIface;

.field private wizardId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->isResumed:Z

    .line 199
    const/4 v0, 0x1

    iput v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->currentActivityCode:I

    .line 50
    return-void
.end method

.method private applyNewAccountDefault(Lcom/weirdvoice/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 331
    iget-boolean v1, p1, Lcom/weirdvoice/api/SipProfile;->use_rfc5626:Z

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p1, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "autoInstanceId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<urn:uuid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/weirdvoice/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 337
    .end local v0    # "autoInstanceId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private saveAccount()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->saveAccount(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private saveAccount(Ljava/lang/String;)V
    .locals 11
    .param p1, "wizardId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 284
    const/4 v3, 0x0

    .line 286
    .local v3, "needRestart":Z
    new-instance v4, Lcom/weirdvoice/utils/PreferencesWrapper;

    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 287
    .local v4, "prefs":Lcom/weirdvoice/utils/PreferencesWrapper;
    iget-object v6, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    iget-object v7, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    invoke-interface {v6, v7}, Lcom/weirdvoice/wizards/WizardIface;->buildAccount(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfile;

    move-result-object v6

    iput-object v6, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    .line 288
    iget-object v6, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    iput-object p1, v6, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    .line 289
    iget-object v6, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    iget-wide v6, v6, Lcom/weirdvoice/api/SipProfile;->id:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 291
    invoke-virtual {v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->startEditing()V

    .line 292
    iget-object v6, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    invoke-interface {v6, v4}, Lcom/weirdvoice/wizards/WizardIface;->setDefaultParams(Lcom/weirdvoice/utils/PreferencesWrapper;)V

    .line 293
    invoke-virtual {v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->endEditing()V

    .line 294
    iget-object v6, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    invoke-direct {p0, v6}, Lcom/weirdvoice/wizards/BasePrefsWizard;->applyNewAccountDefault(Lcom/weirdvoice/api/SipProfile;)V

    .line 295
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    invoke-virtual {v8}, Lcom/weirdvoice/api/SipProfile;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 298
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 299
    iget-object v6, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    iget-object v7, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    invoke-interface {v6, v7}, Lcom/weirdvoice/wizards/WizardIface;->getDefaultFilters(Lcom/weirdvoice/api/SipProfile;)Ljava/util/List;

    move-result-object v1

    .line 300
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/models/Filter;>;"
    if-eqz v1, :cond_0

    .line 301
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 308
    :cond_0
    iget-object v6, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    invoke-interface {v6}, Lcom/weirdvoice/wizards/WizardIface;->needRestart()Z

    move-result v3

    .line 320
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/models/Filter;>;"
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_1
    if-eqz v3, :cond_1

    .line 321
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.weirdvoice.service.ACTION_SIP_REQUEST_RESTART"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/weirdvoice/wizards/BasePrefsWizard;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 301
    .restart local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/models/Filter;>;"
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/models/Filter;

    .line 303
    .local v0, "filter":Lcom/weirdvoice/models/Filter;
    iget-object v7, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    iget-wide v8, v7, Lcom/weirdvoice/api/SipProfile;->id:J

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/weirdvoice/models/Filter;->account:Ljava/lang/Integer;

    .line 304
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/weirdvoice/api/SipManager;->FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/weirdvoice/models/Filter;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 313
    .end local v0    # "filter":Lcom/weirdvoice/models/Filter;
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/models/Filter;>;"
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->startEditing()V

    .line 314
    iget-object v6, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    invoke-interface {v6, v4}, Lcom/weirdvoice/wizards/WizardIface;->setDefaultParams(Lcom/weirdvoice/utils/PreferencesWrapper;)V

    .line 315
    invoke-virtual {v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->endEditing()V

    .line 316
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    iget-object v8, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    iget-wide v8, v8, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    invoke-virtual {v8}, Lcom/weirdvoice/api/SipProfile;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setWizardId(Ljava/lang/String;)Z
    .locals 5
    .param p1, "wId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v2, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 118
    const-string v2, "EXPERT"

    invoke-direct {p0, v2}, Lcom/weirdvoice/wizards/BasePrefsWizard;->setWizardId(Ljava/lang/String;)Z

    move-result v2

    .line 149
    :goto_0
    return v2

    .line 121
    :cond_0
    invoke-static {p1}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardClass(Ljava/lang/String;)Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    move-result-object v1

    .line 122
    .local v1, "wizardInfo":Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;
    if-nez v1, :cond_2

    .line 123
    iget-object v2, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    const-string v4, "EXPERT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    const-string v2, "EXPERT"

    invoke-direct {p0, v2}, Lcom/weirdvoice/wizards/BasePrefsWizard;->setWizardId(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 126
    goto :goto_0

    .line 130
    :cond_2
    :try_start_0
    iget-object v2, v1, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->classObject:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/wizards/WizardIface;

    iput-object v2, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    iput-object p1, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    invoke-interface {v2, p0}, Lcom/weirdvoice/wizards/WizardIface;->setParent(Lcom/weirdvoice/wizards/BasePrefsWizard;)V

    .line 146
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    invoke-static {v3}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardIconRes(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 149
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Base Prefs wizard"

    const-string v4, "Can\'t access wizard class"

    invoke-static {v2, v4, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    iget-object v2, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    const-string v4, "EXPERT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 134
    const-string v2, "EXPERT"

    invoke-direct {p0, v2}, Lcom/weirdvoice/wizards/BasePrefsWizard;->setWizardId(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v3

    .line 136
    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v2, "Base Prefs wizard"

    const-string v4, "Can\'t access wizard class"

    invoke-static {v2, v4, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    iget-object v2, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    const-string v4, "EXPERT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 140
    const-string v2, "EXPERT"

    invoke-direct {p0, v2}, Lcom/weirdvoice/wizards/BasePrefsWizard;->setWizardId(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_5
    move v2, v3

    .line 142
    goto :goto_0
.end method


# virtual methods
.method protected beforeBuildPrefs()V
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f03006a

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->setContentView(I)V

    .line 156
    return-void
.end method

.method protected getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    invoke-interface {v0, p1}, Lcom/weirdvoice/wizards/WizardIface;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeSubActivityCode()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->currentActivityCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->currentActivityCode:I

    .line 202
    iget v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->currentActivityCode:I

    return v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 358
    const-string v0, "Wizard"

    invoke-super {p0, v0, p2}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected getXmlPreferences()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    invoke-interface {v0}, Lcom/weirdvoice/wizards/WizardIface;->getBasePreferenceResource()I

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 240
    invoke-super {p0, p1, p2, p3}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->onActivityResult(IILandroid/content/Intent;)V

    .line 241
    if-nez p1, :cond_0

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "ID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "wizardId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0, v0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->saveAccount(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/weirdvoice/wizards/BasePrefsWizard;->setResult(ILandroid/content/Intent;)V

    .line 246
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->finish()V

    .line 250
    .end local v0    # "wizardId":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    invoke-interface {v1, p1, p2, p3}, Lcom/weirdvoice/wizards/WizardIface;->onActivityResult(IILandroid/content/Intent;)V

    .line 253
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 69
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "id"

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 72
    .local v0, "accountId":J
    const-string v4, "wizard"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/weirdvoice/wizards/BasePrefsWizard;->setWizardId(Ljava/lang/String;)Z

    .line 74
    sget-object v4, Lcom/weirdvoice/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {p0, v0, v1, v4}, Lcom/weirdvoice/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/weirdvoice/api/SipProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    .line 76
    invoke-super {p0, p1}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v4, 0x7f0b0043

    invoke-virtual {p0, v4}, Lcom/weirdvoice/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 80
    .local v2, "bt":Landroid/widget/Button;
    new-instance v4, Lcom/weirdvoice/wizards/BasePrefsWizard$1;

    invoke-direct {v4, p0}, Lcom/weirdvoice/wizards/BasePrefsWizard$1;-><init>(Lcom/weirdvoice/wizards/BasePrefsWizard;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v4, 0x7f0b00c0

    invoke-virtual {p0, v4}, Lcom/weirdvoice/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->saveButton:Landroid/widget/Button;

    .line 89
    iget-object v4, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->saveButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    iget-object v4, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->saveButton:Landroid/widget/Button;

    new-instance v5, Lcom/weirdvoice/wizards/BasePrefsWizard$2;

    invoke-direct {v5, p0}, Lcom/weirdvoice/wizards/BasePrefsWizard$2;-><init>(Lcom/weirdvoice/wizards/BasePrefsWizard;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v4, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    iget-object v5, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    invoke-interface {v4, v5}, Lcom/weirdvoice/wizards/WizardIface;->fillLayout(Lcom/weirdvoice/api/SipProfile;)V

    .line 97
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 177
    const/4 v0, 0x2

    const v1, 0x7f0c01f0

    invoke-interface {p1, v2, v0, v2, v1}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 178
    iget-object v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    iget-wide v0, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 183
    invoke-super {p0, p1}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->onDestroy()V

    .line 276
    const-string v0, "Wizard"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 234
    :cond_0
    invoke-super {p0, p1}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    .line 222
    :pswitch_1
    iget-object v1, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->account:Lcom/weirdvoice/api/SipProfile;

    iget-wide v2, v1, Lcom/weirdvoice/api/SipProfile;->id:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->onPause()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->isResumed:Z

    .line 113
    iget-object v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    invoke-interface {v0}, Lcom/weirdvoice/wizards/WizardIface;->onStop()V

    .line 114
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 188
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    invoke-interface {v1}, Lcom/weirdvoice/wizards/WizardIface;->canSave()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 190
    invoke-super {p0, p1}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->onResume()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->isResumed:Z

    .line 104
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->updateDescriptions()V

    .line 105
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->updateValidation()V

    .line 106
    iget-object v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    invoke-interface {v0}, Lcom/weirdvoice/wizards/WizardIface;->onStart()V

    .line 107
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->isResumed:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->updateDescriptions()V

    .line 162
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->updateValidation()V

    .line 164
    :cond_0
    return-void
.end method

.method public saveAndFinish()V
    .locals 2

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->saveAccount()V

    .line 260
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->setResult(ILandroid/content/Intent;)V

    .line 262
    invoke-virtual {p0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->finish()V

    .line 263
    return-void
.end method

.method protected updateDescriptions()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    invoke-interface {v0}, Lcom/weirdvoice/wizards/WizardIface;->updateDescriptions()V

    .line 347
    return-void
.end method

.method public updateValidation()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->saveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/weirdvoice/wizards/BasePrefsWizard;->wizard:Lcom/weirdvoice/wizards/WizardIface;

    invoke-interface {v1}, Lcom/weirdvoice/wizards/WizardIface;->canSave()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    return-void
.end method
