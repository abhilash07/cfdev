#!/usr/bin/env bash
cfdevdir=$(cd `dirname $0` && cd .. && pwd)

echo "CURRENT DIR= ${cfdevdir}"

pushd "${cfdevdir}" >/dev/null
    go build \
        -ldflags \
        "-X code.cloudfoundry.org/cfdev/cmd.cfdepsUrl=https://s3.amazonaws.com/pcfdev-development/stories/153571042/cf-oss-deps.iso
         -X code.cloudfoundry.org/cfdev/cmd.cfdepsMd5=c79863e02b0ee9f984c0dd5d863d6af2
         -X code.cloudfoundry.org/cfdev/cmd.cfefiUrl=https://s3.amazonaws.com/pcfdev-development/stories/153571042/cfdev-efi.iso
         -X code.cloudfoundry.org/cfdev/cmd.cfefiMd5=fd1e13bb7badcacefc4e810d12a83b1d
         -X code.cloudfoundry.org/cfdev/cmd.vpnkitUrl=https://s3.amazonaws.com/pcfdev-development/stories/153571042/vpnkit
         -X code.cloudfoundry.org/cfdev/cmd.vpnkitMd5=4eb4c3477e8296f4e97b5c89983d4ff3
         -X code.cloudfoundry.org/cfdev/cmd.hyperkitUrl=https://s3.amazonaws.com/pcfdev-development/stories/153571042/hyperkit
         -X code.cloudfoundry.org/cfdev/cmd.hyperkitHd5=61da21b4e82e2bf2e752d043482aa966
         -X code.cloudfoundry.org/cfdev/cmd.linuxkitUrl=https://s3.amazonaws.com/pcfdev-development/stories/153571042/linuxkit
         -X code.cloudfoundry.org/cfdev/cmd.linuxkitMd5=9ae23eec8d297f41caff3450d6a03b3c
         -X code.cloudfoundry.org/cfdev/cmd.qcowtoolUrl=https://s3.amazonaws.com/pcfdev-development/stories/153571042/qcow-tool
         -X code.cloudfoundry.org/cfdev/cmd.qcowtoolMd5=22f3a57096ae69027c13c4933ccdd96c
         -X code.cloudfoundry.org/cfdev/cmd.uefiUrl=https://s3.amazonaws.com/pcfdev-development/stories/153571042/UEFI.fd
         -X code.cloudfoundry.org/cfdev/cmd.uefiMd5=2eff1c02d76fc3bde60f497ce1116b09"
popd