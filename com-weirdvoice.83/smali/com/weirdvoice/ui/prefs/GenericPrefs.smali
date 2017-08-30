.class public abstract Lcom/weirdvoice/ui/prefs/GenericPrefs;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "GenericPrefs.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/weirdvoice/ui/prefs/IPreferenceHelper;


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "GenericPrefs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    return-void
.end method

.method private setPreferenceScreenType(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 3
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 230
    .local v1, "pf":Landroid/preference/Preference;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v0, "it":Landroid/content/Intent;
    const-string v2, "preference_type"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 233
    return-void
.end method


# virtual methods
.method protected afterBuildPrefs()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected beforeBuildPrefs()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method protected getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "field_name"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    const-class v1, Lcom/weirdvoice/R$string;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_summary"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "keyid":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    .end local v0    # "keyid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 114
    :catch_0
    move-exception v1

    .line 118
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 112
    :catch_1
    move-exception v1

    goto :goto_1

    .line 110
    :catch_2
    move-exception v1

    goto :goto_1

    .line 108
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method protected abstract getXmlPreferences()I
.end method

.method public hidePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 203
    .local v1, "pfs":Landroid/preference/PreferenceScreen;
    move-object v0, v1

    .line 204
    .local v0, "parentPref":Landroid/preference/PreferenceGroup;
    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "parentPref":Landroid/preference/PreferenceGroup;
    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 208
    .restart local v0    # "parentPref":Landroid/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {v1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 210
    .local v2, "toRemovePref":Landroid/preference/Preference;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v3, "Generic prefs"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Not able to find"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->beforeBuildPrefs()V

    .line 55
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->getXmlPreferences()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->afterBuildPrefs()V

    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onPause()V

    .line 69
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->updateDescriptions()V

    .line 64
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->updateDescriptions()V

    .line 75
    return-void
.end method

.method public setListFieldSummary(Ljava/lang/String;)V
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 168
    .local v0, "pfs":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 169
    .local v1, "pref":Landroid/preference/ListPreference;
    if-nez v1, :cond_0

    .line 170
    const-string v3, "GenericPrefs"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to find preference "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    .line 175
    .local v2, "val":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPasswordFieldSummary(Ljava/lang/String;)V
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 147
    .local v0, "pfs":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 148
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 150
    .local v1, "pref":Landroid/preference/Preference;
    const/4 v4, 0x0

    invoke-interface {v2, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "val":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/CharSequence;)V

    .line 158
    return-void

    .line 155
    :cond_0
    const-string v4, "."

    const-string v5, "*"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public setPreferenceScreenSub(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p1, p4}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->setPreferenceScreenType(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 226
    return-void
.end method

.method public setPreferenceScreenType(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->setPreferenceScreenType(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 221
    return-void
.end method

.method protected setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    return-void
.end method

.method public setStringFieldSummary(Ljava/lang/String;)V
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 129
    .local v0, "pfs":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 130
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 132
    .local v1, "pref":Landroid/preference/Preference;
    const/4 v4, 0x0

    invoke-interface {v2, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "val":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/weirdvoice/ui/prefs/GenericPrefs;->setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method protected abstract updateDescriptions()V
.end method
