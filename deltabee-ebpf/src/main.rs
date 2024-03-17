#![no_std]
#![no_main]

use aya_ebpf::{macros::kprobe, programs::ProbeContext};

#[kprobe]
pub fn testdeltabee(ctx: ProbeContext) -> u32 {
    match try_deltabee(ctx) {
        Ok(ret) => ret,
        Err(ret) => ret,
    }
}

fn try_deltabee(ctx: ProbeContext) -> Result<u32, u32> {
    aya_log_ebpf::info!(&ctx, "function tcp_connect called");
    // aya_log_ebpf::warn!(&ctx, "function tcp_connect called");
    // aya_log_ebpf::debug!(&ctx, "function tcp_connect called");
    // aya_log_ebpf::trace!(&ctx, "function tcp_connect called");
    // aya_log_ebpf::error!(&ctx, "function tcp_connect called");
    Ok(0)
}

// fn try_kprobetcp(ctx: ProbeContext) -> Result<u32, i64> {
//     let sock: *mut sock = ctx.arg(0).ok_or(1i64)?;
//     let sk_common = unsafe {
//         bpf_probe_read_kernel(&(*sock).__sk_common as *const sock_common).map_err(|e| e)?
//     };
//     match sk_common.skc_family {
//         AF_INET => {
//             let src_addr =
//                 u32::from_be(unsafe { sk_common.__bindgen_anon_1.__bindgen_anon_1.skc_rcv_saddr });
//             let dest_addr: u32 =
//                 u32::from_be(unsafe { sk_common.__bindgen_anon_1.__bindgen_anon_1.skc_daddr });
//             info!(
//                 &ctx,
//                 "AF_INET src address: {:i}, dest address: {:i}", src_addr, dest_addr,
//             );
//             Ok(0)
//         }
//         AF_INET6 => {
//             let src_addr = sk_common.skc_v6_rcv_saddr;
//             let dest_addr = sk_common.skc_v6_daddr;
//             info!(
//                 &ctx,
//                 "AF_INET6 src addr: {:i}, dest addr: {:i}",
//                 unsafe { src_addr.in6_u.u6_addr8 },
//                 unsafe { dest_addr.in6_u.u6_addr8 }
//             );
//             Ok(0)
//         }
//         _ => Ok(0),
//     }
// }

#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    unsafe {
        core::hint::unreachable_unchecked();
    }
}
