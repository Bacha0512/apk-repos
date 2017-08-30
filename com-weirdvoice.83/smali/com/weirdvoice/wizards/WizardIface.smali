.class public interface abstract Lcom/weirdvoice/wizards/WizardIface;
.super Ljava/lang/Object;
.source "WizardIface.java"


# virtual methods
.method public abstract buildAccount(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfile;
.end method

.method public abstract canSave()Z
.end method

.method public abstract fillLayout(Lcom/weirdvoice/api/SipProfile;)V
.end method

.method public abstract getBasePreferenceResource()I
.end method

.method public abstract getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDefaultFilters(Lcom/weirdvoice/api/SipProfile;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/weirdvoice/api/SipProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/weirdvoice/models/Filter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract needRestart()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract setDefaultParams(Lcom/weirdvoice/utils/PreferencesWrapper;)V
.end method

.method public abstract setParent(Lcom/weirdvoice/wizards/BasePrefsWizard;)V
.end method

.method public abstract updateDescriptions()V
.end method
