.class public interface abstract Lcom/coui/appcompat/widget/COUISpinnerCallback;
.super Ljava/lang/Object;
.source "COUISpinnerCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissCallback;,
        Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissListener;
    }
.end annotation


# virtual methods
.method public abstract isDropDownShowing()Z
.end method

.method public abstract setDropdownDismissCallback(Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissCallback;)V
.end method

.method public abstract setDropdownItemClickListener(Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;)V
.end method

.method public abstract setDropdownUpdateAfterAnim(Z)V
.end method
